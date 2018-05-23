include $(USERAPPS_ROOT)/config
-include $(USERAPPS_ROOT)/reg_config
include $(USERAPPS_ROOT)/rootfs/clone_info.mk
include $(USERAPPS_ROOT)/mkdefs
ifeq ($(USE_CUSTOM_VERSION),y)
include $(USERAPPS_ROOT)/rootfs/clones/$(TARGET)/version.mk
else
include $(USERAPPS_ROOT)/rootfs/version.mk
endif
include $(USERAPPS_ROOT)/lang_profile
include $(USERAPPS_ROOT)/rootfs/kernel_info.mk

ifeq ($(KERNEL_PATH),)
$(error KERNEL_PATH is missing)
endif

ROOT_DIR:=root
PLUGIN_DIR:=./plugin

KERNEL_NAME:=./prebuilt/kernel/$(KERNEL_FILENAME)
ifneq ($(MODULE_DIR),)
MODULE_SRC_DIR:=./prebuilt/modules/$(MODULE_DIR)/lib/modules
MODULE_DEST_DIR:=$(ROOT_DIR)/lib/modules
endif

$(TARGET): target.fs image

mkdevs.efm:
	@mkdir $(ROOT_DIR)/dev/mtd
	@sudo mknod -m664 $(ROOT_DIR)/dev/ram b 1 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/ram0 b 1 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/ram1 b 1 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/ram2 b 1 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/ram3 b 1 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/0 c 90 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/0ro c 90 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/1 c 90 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/1ro c 90 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/2 c 90 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/2ro c 90 5
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/3 c 90 6
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/3ro c 90 7
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/4 c 90 8
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/4ro c 90 9
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/5 c 90 10
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/5ro c 90 11
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/6 c 90 12
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/6ro c 90 13
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/7 c 90 14
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtd/7ro c 90 15

	@mkdir $(ROOT_DIR)/dev/cua
	@sudo mknod -m664 $(ROOT_DIR)/dev/cua/0 c 5 64
	@sudo mknod -m664 $(ROOT_DIR)/dev/cua/1 c 5 65

	@mkdir $(ROOT_DIR)/dev/tts
	@sudo mknod -m664 $(ROOT_DIR)/dev/tts/0 c 4 64
	@sudo mknod -m664 $(ROOT_DIR)/dev/tts/1 c 4 65

	@mkdir $(ROOT_DIR)/dev/pts
	@sudo mknod -m664 $(ROOT_DIR)/dev/pts/0 c 136 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/pts/1 c 136 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/pts/2 c 136 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/pts/3 c 136 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/pts/4 c 136 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/pts/5 c 136 5
	@sudo mknod -m664 $(ROOT_DIR)/dev/pts/6 c 136 6

	@mkdir $(ROOT_DIR)/dev/pty
	@sudo mknod -m664 $(ROOT_DIR)/dev/pty/m0 c 2 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/pty/m1 c 2 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/pty/m2 c 2 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/pty/m3 c 2 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/pty/m4 c 2 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/pty/m5 c 2 5
	@sudo mknod -m664 $(ROOT_DIR)/dev/pty/m6 c 2 6

	@mkdir $(ROOT_DIR)/dev/mtdblock
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtdblock/0 c 31 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtdblock/1 c 31 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtdblock/2 c 31 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtdblock/3 c 31 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtdblock/4 c 31 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtdblock/5 c 31 5

	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyS0 c 4 64
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyS1 c 4 65

	@sudo mknod -m664 $(ROOT_DIR)/dev/fuse c 10 229
	@sudo mknod -m664 $(ROOT_DIR)/dev/misc/fuse c 10 229

	@sudo mknod -m664 $(ROOT_DIR)/dev/sda b 8 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda1 b 8 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda2 b 8 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda3 b 8 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda4 b 8 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda5 b 8 5
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda6 b 8 6
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda7 b 8 7
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda8 b 8 8
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda9 b 8 9
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda10 b 8 10
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda11 b 8 11
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda12 b 8 12
	@sudo mknod -m664 $(ROOT_DIR)/dev/sda13 b 8 13
ifeq ($(USE_CUPS),y)
	@mkdir $(ROOT_DIR)/dev/usb
	@chmod 777 $(ROOT_DIR)/dev/usb
	@sudo mknod -m666 $(ROOT_DIR)/dev/usb/lp0 c 180 0
endif

mkdevs.mtk:
	@sudo mknod -m664 $(ROOT_DIR)/dev/video0    c  81 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/spiS0     c 217 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/i2cM0     c 218 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/mt6605    c 219 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/flash0    c 200 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/swnat0    c 210 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/hwnat0    c 220 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/acl0      c 230 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/ac0       c 240 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtr0      c 250 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/rdm0      c 263 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/gpio      c 241 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/pcm0      c 233 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/i2s0      c 191 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/cls0      c 235 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/spdif0    c 236 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/vdsp      c 245 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/slic      c 225 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/controlC0 c 116 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/pcmC0D0c  c 116 24
	@sudo mknod -m664 $(ROOT_DIR)/dev/pcmC0D0p  c 116 16
	@sudo mknod -m664 $(ROOT_DIR)/dev/device    b 179 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/mem       c   1 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/full      c   1 7
	@sudo mknod -m664 $(ROOT_DIR)/dev/kmem      c   1 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/kmsg      c   1 11
	@sudo mknod -m664 $(ROOT_DIR)/dev/null      c   1 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/port      c   1 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/zero      c   1 5
	@sudo mknod -m664 $(ROOT_DIR)/dev/random    c   1 8
	@sudo mknod -m664 $(ROOT_DIR)/dev/urandom   c   1 9
	@sudo mknod -m664 $(ROOT_DIR)/dev/pmt       c 248 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/ppp       c 108 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/rtc0      c 254 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/tty       c   5 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptmx      c   5 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/console   c   5 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp0     c   2 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp1     c   2 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp2     c   2 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp3     c   2 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp4     c   2 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp5     c   2 5
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp6     c   2 6
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp7     c   2 7
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp8     c   2 8
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptyp9     c   2 9
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptypa     c   2 10
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptypb     c   2 11
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptypc     c   2 12
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptypd     c   2 13
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptype     c   2 14
	@sudo mknod -m664 $(ROOT_DIR)/dev/ptypf     c   2 15
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp0     c   3 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp1     c   3 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp2     c   3 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp3     c   3 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp4     c   3 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp5     c   3 5
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp6     c   3 6
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp7     c   3 7
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp8     c   3 8
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyp9     c   3 9
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttypa     c   3 10
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttypb     c   3 11
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttypc     c   3 12
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttypd     c   3 13
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttype     c   3 14
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttypf     c   3 15
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyGS0    c 246 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyGS1    c 246 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyGS2    c 246 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyGS3    c 246 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyMT0    c 204 209
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyMT1    c 204 210
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyMT2    c 204 211
	@sudo mknod -m664 $(ROOT_DIR)/dev/ttyMT3    c 204 212
	@sudo mknod -m664 $(ROOT_DIR)/dev/BOOT      c 251 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/btif      c 249 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtfreqhopping     c  10 57
	@sudo mknod -m664 $(ROOT_DIR)/dev/uhid              c  10 239
	@sudo mknod -m664 $(ROOT_DIR)/dev/xLog              c  10 62
	@sudo mknod -m664 $(ROOT_DIR)/dev/cpu_dma_latency   c  10 54
	@sudo mknod -m664 $(ROOT_DIR)/dev/hid-keyboard      c  10 55
	@sudo mknod -m664 $(ROOT_DIR)/dev/psaux             c  10  1
	@sudo mknod -m664 $(ROOT_DIR)/dev/network_latency   c  10 53
	@sudo mknod -m664 $(ROOT_DIR)/dev/usb_accessory     c  10 49
	@sudo mknod -m664 $(ROOT_DIR)/dev/logksystem        c  10 61
	@sudo mknod -m664 $(ROOT_DIR)/dev/android_adb       c  10 51
	@sudo mknod -m664 $(ROOT_DIR)/dev/misc-sd           c  10 60
	@sudo mknod -m664 $(ROOT_DIR)/dev/loop-control      c  10 237
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtk-kpd           c  10 56
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtp_usb           c  10 50
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtgpio            c  10 58
	@sudo mknod -m664 $(ROOT_DIR)/dev/uinput            c  10 223
	@sudo mknod -m664 $(ROOT_DIR)/dev/mt_otg_test       c  10 59
	@sudo mknod -m664 $(ROOT_DIR)/dev/vga_arbiter       c  10 63
	@sudo mknod -m664 $(ROOT_DIR)/dev/network_throughput c  10 52
	@sudo mknod -m664 $(ROOT_DIR)/dev/mmcblk0p2         b 179 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/mmcblk0p3         b 179 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/loop0             b   7 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/loop1             b   7 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/loop2             b   7 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/loop3             b   7 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/loop4             b   7 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/loop5             b   7 5
	@sudo mknod -m664 $(ROOT_DIR)/dev/loop6             b   7 6
	@sudo mknod -m664 $(ROOT_DIR)/dev/loop7             b   7 7
	@sudo mknod -m664 $(ROOT_DIR)/dev/zram0             b 254 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/mmcblk0rpmb       b 179 96
	@sudo mknod -m664 $(ROOT_DIR)/dev/mmcblk0boot0      b 179 32
	@sudo mknod -m664 $(ROOT_DIR)/dev/mmcblk0boot1      b 179 64
	@sudo mknod -m664 $(ROOT_DIR)/dev/mmcblk0           b 179 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/mice              c  13 63
	@sudo mknod -m664 $(ROOT_DIR)/dev/event0            c  13 64
	@sudo mknod -m664 $(ROOT_DIR)/dev/timer             c 116 33
	@sudo mknod -m664 $(ROOT_DIR)/dev/mbr               c 243 1
	@sudo mknod -m664 $(ROOT_DIR)/dev/uboot             c 243 2
	@sudo mknod -m664 $(ROOT_DIR)/dev/factory           c 243 4
	@sudo mknod -m664 $(ROOT_DIR)/dev/preloader         c 243 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/config            c 243 3
	@sudo mknod -m664 $(ROOT_DIR)/dev/rootfs            c 243 7
	@sudo mknod -m664 $(ROOT_DIR)/dev/usrdata           c 243 8
	@sudo mknod -m664 $(ROOT_DIR)/dev/bmtpool           c 243 9
	@sudo mknod -m664 $(ROOT_DIR)/dev/bootimg           c 243 5
	@sudo mknod -m664 $(ROOT_DIR)/dev/recovery          c 243 6
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtk_sched         c 247 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/wmtdetect         c 154 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/MTK_SMI           c 245 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/devmap            c 196 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/stpgps            c 191 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/apsoc_nvram       c 250 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/mtk-adc-cali      c 244 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/stpwmt            c 190 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/stpbt             c 192 0
	@sudo mknod -m664 $(ROOT_DIR)/dev/wmtWifi           c 153 0
	
post_targetfs: mkdevs.mtk mkdevs.efm
	@echo -e "\t--->Post processing..." 
ifneq ($(USE_ROUTER_NAS),y)
	@rm -rf $(ROOT_DIR)/lib/modules/kernel/drivers/net/phy
	@rm -rf $(ROOT_DIR)/lib/modules/kernel/drivers/scsi
endif
ifneq ($(HW_NAT),y)
	@rm -rf $(ROOT_DIR)/lib/modules/kernel/net/nat/hw_nat
endif
	@rm -rf $(ROOT_DIR)/lib/modules/kernel/net/wireless/lib80211.ko
	@rm -rf $(ROOT_DIR)/lib/modules/kernel/drivers/net/*.ko
	@rm -rf $(ROOT_DIR)/lib/modules/kernel/drivers/watchdog
	@rm -rf $(ROOT_DIR)/lib/modules/kernel/drivers/e1000

# Need to find out why etc_ro is needed 
ifeq ($(LANG_DEFAULT_PROFILE),y)
	@cp -ra clones/$(TARGET)/default.$(LANGUAGE_POSTFIX)/etc_ro $(ROOT_DIR)/
else
	@cp -ra clones/$(TARGET)/default/etc_ro $(ROOT_DIR)/
endif
	@rm -rf $(ROOT_DIR)/default/etc_ro
# End
ifeq ($(USE_FACTORY_SECTION),y)
	@cat clones/$(TARGET)/$(EEPROM_FILE) > $(ROOT_DIR)/default/Wireless/eeprom/EEPROM.2g.bin
ifeq ($(USE_5G_WL),y)
	@cat clones/$(TARGET)/$(EEPROM_FILE_5G) > $(ROOT_DIR)/default/Wireless/eeprom/EEPROM.5g.bin
endif
	@cat clones/$(TARGET)/$(EEPROM_FILE) > $(ROOT_DIR)/default/Wireless/eeprom/EEPROM.all.bin
ifeq ($(USE_5G_WL),y)
	@cat clones/$(TARGET)/padding_eeprom >> $(ROOT_DIR)/default/Wireless/eeprom/EEPROM.all.bin
	@cat clones/$(TARGET)/$(EEPROM_FILE_5G) >> $(ROOT_DIR)/default/Wireless/eeprom/EEPROM.all.bin
	@cat clones/$(TARGET)/padding_eeprom >> $(ROOT_DIR)/default/Wireless/eeprom/EEPROM.all.bin
endif
endif
	@rm -rf `find ./$(ROOT_DIR) -name 'CVS'`

	@sudo rm -rf $(KERNEL_PATH)/../romfs/*
	@sudo mkdir -p $(KERNEL_PATH)/../romfs/
	@sudo cp -ra root/* $(KERNEL_PATH)/../romfs/
	@sudo chown -R root:root $(KERNEL_PATH)/../romfs/
	@sudo rm -rf  $(KERNEL_PATH)/../romfs/init 
	@sudo ln -s  sbin/rc $(KERNEL_PATH)/../romfs/init 


ROOTFS_IMG=rootfs.lzma
CHIPSET_APP_INSTALL_DIR:=rt288x_app

#IPTABLES_BIN_PATH:=$(USERAPPS_ROOT)/iptables-1.3.8
IPTABLES_BIN_PATH:=$(USERAPPS_ROOT)/iptables-1.4.10
IPTABLES_BINS:=iptables
IPTABLES_LIB_PATH:=$(USERAPPS_ROOT)/iptables-1.4.10/.libs
IPTABLES_LIBS:=libxtables.so libxtables.so.5 libxtables.so.5.0.0 
IPTABLES_LIB_PATH2:=$(USERAPPS_ROOT)/iptables-1.4.10/libiptc/.libs
IPTABLES_LIBS2:=libip4tc.so.0


MINISSDP_BIN_PATH:= $(USERAPPS_ROOT)/minissdpd-1.5.20160301
BRCTL_BIN_PATH:= $(USERAPPS_ROOT)/bridge-utils-mt7623/brctl
UPNPD_BIN_PATH:= $(USERAPPS_ROOT)/$(MINIUPNPD_DIR)


TNTFS_MODULE_PATH:=$(MODULE_DIR)/$(TNTFS_MODULE_NAME)







STRIP_OPTION:=-d
LDCONFIG_CMD:=
CLIB_DIR:=fs/mt7623/clib/gcc483

include $(USERAPPS_ROOT)/mkscripts/target.mk

# Image Section
FIRMWARE_NAME:=a8004nm_ml_10_022.bin
FIRMWARE_TYPE:=kernel
BOOTIMG := ./prebuilt/boot/$(BOOT_FILENAME)

.PHONY:kernel
kernel:
	make -f kernel.mk

image: kernel
	@./mkimage -A arm -O linux -T $(FIRMWARE_TYPE) -C none -a 80008000 -e 80008000 -n $(PRODUCT_ID) -d ./zImage $(FIRMWARE_NAME)
	@./mkfirm -o clones/$(TARGET)/$(PRODUCT_ID)_xboot.bin -a $(PRODUCT_ID) -b $(BOOTIMG) -e clones/$(TARGET)/dummy.bin -m $(MAX_BOOT_SIZE) -f 1
ifneq ($(NAND_PRELOADER),)
	@echo -n "Making $(FIRMWARE_NAME).burn for Mass ... "
	# Add Preloader for NAND
	@cp clones/$(TARGET)/$(NAND_PRELOADER) $(FIRMWARE_NAME).burn
	# Add Boot Loader
	@cat clones/$(TARGET)/$(PRODUCT_ID)_xboot.bin >> $(FIRMWARE_NAME).burn
	# Add Config region
	@rm -rf config.bin; touch config.bin; ./addpad config.bin $(MAX_CONFIG_SIZE) 0xff
	@cat config.bin >> $(FIRMWARE_NAME).burn
	# Add EEPROM
	@cat clones/$(TARGET)/$(EEPROM_FILE) > clones/$(TARGET)/eeprom.bin
	@cat clones/$(TARGET)/padding_eeprom >> clones/$(TARGET)/eeprom.bin
	@cat clones/$(TARGET)/$(EEPROM_FILE_5G) >> clones/$(TARGET)/eeprom.bin
	@cat clones/$(TARGET)/padding_eeprom >> clones/$(TARGET)/eeprom.bin
	@./addpad clones/$(TARGET)/eeprom.bin $(MAX_FACTORY_SIZE) 0xff
	@cat clones/$(TARGET)/eeprom.bin >> $(FIRMWARE_NAME).burn
	# Add Firmware
	@cat $(FIRMWARE_NAME) >> $(FIRMWARE_NAME).burn
	@echo "Done"
	@mv $(FIRMWARE_NAME).burn binary/$(FIRMWARE_NAME).burn
endif
	@mv $(FIRMWARE_NAME) binary/$(FIRMWARE_NAME)

#	ftp 192.168.100.100
	
clean:
	rm -rf save.fs.gz initrd.gz
