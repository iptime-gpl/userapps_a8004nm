/***************************************************************************
 *             __________               __   ___.
 *   Open      \______   \ ____   ____ |  | _\_ |__   _______  ___
 *   Source     |       _//  _ \_/ ___\|  |/ /| __ \ /  _ \  \/  /
 *   Jukebox    |    |   (  <_> )  \___|    < | \_\ (  <_> > <  <
 *   Firmware   |____|_  /\____/ \___  >__|_ \|___  /\____/__/\_ \
 *                     \/            \/     \/    \/            \/
 * $Id: i2c_wm8751.c,v 1.1.1.1 2016/07/21 08:21:30 mt7623 Exp $
 *
 * Driver for WM8751 audio codec
 *
 * Based on code from the ipodlinux project - http://ipodlinux.org/
 * Adapted for Rockbox in December 2005
 *
 * Original file: linux/arch/armnommu/mach-ipod/audio.c
 *
 * Copyright (c) 2003-2005 Bernard Leach (leachbj@bouncycastle.org)
 *
 * All files in this archive are subject to the GNU General Public License.
 * See the file COPYING in the source tree root for full license agreement.
 *
 * This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
 * KIND, either express or implied.
 *
 ****************************************************************************/
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/i2c.h>
#include <linux/config.h>
#include <linux/interrupt.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include "i2c_wm8751.h"
#include "../core/i2s_ctrl.h"

#define BUF_SIZE                20

unsigned long wm_reg_data[48];
struct wm8751_data *wmio;

struct wm8751_data {
        struct i2c_client   *client;
        struct device       *dev;
        const char          *name;
};

void i2c_WM8751_write(u32 reg, u32 data)
{
        struct i2c_msg msg[1];
                u8 buf[2]={0};
        int ret;

        wm_reg_data[reg] = data;
        buf[0]= (reg<<1)|(0x01&(data>>8));
        buf[1]= (data&0xFF);

        msg[0].addr = wmio->client->addr>>1;
        msg[0].flags = 0;
        msg[0].buf = buf;
        msg[0].len = 2;

        ret = i2c_transfer(wmio->client->adapter, msg, 1);

        if (ret != 1)
                printk("%s: i2c write error!\n", __func__);
}


/* convert tenth of dB volume (-730..60) to master volume register value */
int tenthdb2master(int db)
{
    /* +6 to -73dB 1dB steps (plus mute == 80levels) 7bits */
    /* 1111111 ==  +6dB  (0x7f)                            */
    /* 1111001 ==   0dB  (0x79)                            */
    /* 0110000 == -73dB  (0x30)                            */
    /* 0101111..0000000 == mute  (<= 0x2f)                 */
    if (db < VOLUME_MIN)
        return 0x0;
    else
        return (db / 10) + 73 + 0x30;
}

static int tone_tenthdb2hw(int value)
{
    /* -6.0db..+0db..+9.0db step 1.5db - translate -60..+0..+90 step 15
        to 10..6..0 step -1.
    */
    value = 10 - (value + 60) / 15;

    if (value == 6)
        value = 0xf; /* 0db -> off */

    return value;
}


#ifdef USE_ADAPTIVE_BASS
static int adaptivebass2hw(int value)
{
    /* 0 to 15 step 1 - step -1  0 = off is a 15 in the register */
    value = 15 - value;

    return value;
}
#endif

/* Reset and power up the WM8751 */
void audiohw_preinit(void)
{
    /*
     * 1. Switch on power supplies.
     *    By default the WM8751 is in Standby Mode, the DAC is
     *    digitally muted and the Audio Interface, Line outputs
     *    and Headphone outputs are all OFF (DACMU = 1 Power
     *    Management registers 1 and 2 are all zeros).
     */
    i2c_WM8751_write(RESET, RESET_RESET);    /*Reset*/

     /* 2. Enable Vmid and VREF. */
    i2c_WM8751_write(PWRMGMT1, PWRMGMT1_VREF | PWRMGMT1_VMIDSEL_5K);

}

/* Enable DACs and audio output after a short delay */
void audiohw_postinit(int bSlave, int Aout)
{
	int i;
    	/* From app notes: allow Vref to stabilize to reduce clicks */
    	for(i = 0; i < 1000*HZ; i++);

     	/* 3. Enable DACs as required. */
    	i2c_WM8751_write(PWRMGMT2, PWRMGMT2_DACL | PWRMGMT2_DACR);

     	/* 4. Enable line and / or headphone output buffers as required. */
    	i2c_WM8751_write(PWRMGMT2, PWRMGMT2_DACL | PWRMGMT2_DACR |
                  	PWRMGMT2_LOUT1 | PWRMGMT2_ROUT1 | PWRMGMT2_LOUT2 |
                 	PWRMGMT2_ROUT2);

    	i2c_WM8751_write(ADDITIONAL1, ADDITIONAL1_TSDEN | ADDITIONAL1_TOEN |
                    	ADDITIONAL1_DMONOMIX_LLRR | ADDITIONAL1_VSEL_DEFAULT);

	i2c_WM8751_write(ADDITIONAL2, 0x08);


    	i2c_WM8751_write(LEFTMIX1, LEFTMIX1_LD2LO | LEFTMIX1_LI2LO_DEFAULT);
    	i2c_WM8751_write(RIGHTMIX2, RIGHTMIX2_RD2RO | RIGHTMIX2_RI2RO_DEFAULT);

	 /* BCLKINV=0(Dont invert BCLK) MS=1(Enable Master) LRSWAP=0 LRP=0 */
    	/* IWL=00(16 bit) FORMAT=10(I2S format) */
	if(bSlave)
	{ 
		MSG("WM8751 slave.....\n");
		i2c_WM8751_write(AINTFCE, AINTFCE_WL_16 | AINTFCE_FORMAT_I2S);
	}	
	else
	{
		MSG("WM8751 master.....\n");
  		/* AINTFCE_BCLKINV on or off depend on trying result */
    		i2c_WM8751_write(AINTFCE, AINTFCE_MS | AINTFCE_WL_16 | AINTFCE_FORMAT_I2S);	
   	}


    	audiohw_mute(false);
}

int audiohw_set_master_vol(int vol_l, int vol_r)
{
    	/* +6 to -73dB 1dB steps (plus mute == 80levels) 7bits */
    	/* 1111111 ==  +6dB                                    */
    	/* 1111001 ==   0dB                                    */
    	/* 0110000 == -73dB                                    */
    	/* 0101111 == mute (0x2f)                              */

    	//i2c_WM8751_write(LOUT1, LOUT1_BITS | LOUT1_LOUT1VOL(vol_l));
    	//i2c_WM8751_write(ROUT1, ROUT1_BITS | ROUT1_ROUT1VOL(vol_r));
    
    	i2c_WM8751_write(LEFTGAIN, LEFTGAIN_LDVU | LEFTGAIN_LDACVOL(vol_l));
    	i2c_WM8751_write(RIGHTGAIN, RIGHTGAIN_LDVU | RIGHTGAIN_LDACVOL(vol_r));
    	return 0;
}

int audiohw_set_lineout_vol(int vol_l, int vol_r)
{
    	i2c_WM8751_write(LOUT2, LOUT2_BITS | LOUT2_LOUT2VOL(vol_l));
    	i2c_WM8751_write(ROUT2, ROUT2_BITS | ROUT2_ROUT2VOL(vol_r));
    	return 0;
}

void audiohw_set_bass(int value)
{
    	i2c_WM8751_write(BASSCTRL, BASSCTRL_BITS |

#ifdef USE_ADAPTIVE_BASS
        BASSCTRL_BASS(adaptivebass2hw(value)));
#else
        BASSCTRL_BASS(tone_tenthdb2hw(value)));
#endif
}

void audiohw_set_treble(int value)
{
    	i2c_WM8751_write(TREBCTRL, TREBCTRL_BITS |
        TREBCTRL_TREB(tone_tenthdb2hw(value)));
}

void audiohw_mute(bool mute)
{
    	/* Mute:   Set DACMU = 1 to soft-mute the audio DACs. */
    	/* Unmute: Set DACMU = 0 to soft-un-mute the audio DACs. */
    	i2c_WM8751_write(DACCTRL, mute ? DACCTRL_DACMU : 0);
}

/* Nice shutdown of WM8751 codec */
void audiohw_close(void)
{
    	/* 1. Set DACMU = 1 to soft-mute the audio DACs. */
    	audiohw_mute(true);

    	/* 2. Disable all output buffers. */
    	i2c_WM8751_write(PWRMGMT2, 0x0);

    	/* 3. Switch off the power supplies. */
    	i2c_WM8751_write(PWRMGMT1, 0x0);
}

/* Note: Disable output before calling this function */
void audiohw_set_frequency(int fsel)
{
    	i2c_WM8751_write(CLOCKING, fsel);	
} 

void audiohw_set_MCLK(unsigned int bUsb)
{
	if(bUsb)
    		i2c_WM8751_write(CLOCKING, CLOCKING_SR_USB);
   	else
    		i2c_WM8751_write(CLOCKING, 0);		
} 

EXPORT_SYMBOL(audiohw_set_frequency);
EXPORT_SYMBOL(audiohw_close);
EXPORT_SYMBOL(audiohw_postinit);
EXPORT_SYMBOL(audiohw_preinit);
EXPORT_SYMBOL(audiohw_set_master_vol);
EXPORT_SYMBOL(audiohw_set_lineout_vol);
EXPORT_SYMBOL(audiohw_set_bass);
EXPORT_SYMBOL(audiohw_set_treble);
EXPORT_SYMBOL(audiohw_mute);
EXPORT_SYMBOL(audiohw_set_MCLK);

