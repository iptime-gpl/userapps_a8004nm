/********************************************************************************************
 *     LEGAL DISCLAIMER 
 *
 *     (Header of MediaTek Software/Firmware Release or Documentation)
 *
 *     BY OPENING OR USING THIS FILE, BUYER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES 
 *     THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE") RECEIVED 
 *     FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO BUYER ON AN "AS-IS" BASIS 
 *     ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES, EXPRESS OR IMPLIED, 
 *     INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR 
 *     A PARTICULAR PURPOSE OR NONINFRINGEMENT. NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY 
 *     WHATSOEVER WITH RESPECT TO THE SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, 
 *     INCORPORATED IN, OR SUPPLIED WITH THE MEDIATEK SOFTWARE, AND BUYER AGREES TO LOOK 
 *     ONLY TO SUCH THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. MEDIATEK SHALL ALSO
 *     NOT BE RESPONSIBLE FOR ANY MEDIATEK SOFTWARE RELEASES MADE TO BUYER'S SPECIFICATION 
 *     OR TO CONFORM TO A PARTICULAR STANDARD OR OPEN FORUM.
 *     
 *     BUYER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND CUMULATIVE LIABILITY WITH 
 *     RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE, AT MEDIATEK'S OPTION, 
 *     TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE, OR REFUND ANY SOFTWARE LICENSE 
 *     FEES OR SERVICE CHARGE PAID BY BUYER TO MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE. 
 *     
 *     THE TRANSACTION CONTEMPLATED HEREUNDER SHALL BE CONSTRUED IN ACCORDANCE WITH THE LAWS 
 *     OF THE STATE OF CALIFORNIA, USA, EXCLUDING ITS CONFLICT OF LAWS PRINCIPLES.  
 ************************************************************************************************/

/******************************************************************************
*[File]             mtk_vga.h
*[Version]          v0.1
*[Revision Date]    2010-01-04
*[Author]           Kenny Hsieh
*[Description]
*    source file for global varabile and function in av_d directory
*
*
******************************************************************************/
#ifndef _VGA_CUSTOMIZATION_H_
#define _VGA_CUSTOMIZATION_H_

#include "vga_timing.h"


VGAMODE  VGATIMING_TABLE[]=
{
	//HF	VF	P-CLK	HTOTAL	VTOTAL	H-W 	H-Act	H-BP	V(BP+w)	V-Act
/*000*/{0,	0,	0,	0,	0,	0,	720,	0,	0,	480,	0x00},	// 000: No Signal
/*001*/{157,	60,	540,	3432,	525,	283,	2880,	229,	16,	480,	0x41},	// 001: 480i oversample(10,11)
/*002*/{157,	50,	540,	3456,	625,	259,	2880,	277,	20,	576,	0x41},	// 002: 576i oversample(25,26)
/*003*/{315,	60,	540,	1716,	525,	120,	1440,	123,	34,	480,	0x03},	// 003: 480p oversample(14,15)
/*004*/{313,	50,	540,	1728,	625,	124,	1440,	139,	42,	576,	0x01},	// 004: 576p oversample(29,30)
/*005*/{375,	50,	742,	1980,	750,	32,	1280,	262,	23,	720,	0x00},	// 005: 720p50 (19)
/*006*/{450,	60,	742,	1650,	750,	31,	1280,	262,	23,	720,	0x00},	// 006: 720p60 (4)
/*007*/{270,	48,	742,	2750,	1125,	44,	1920,	193,	18,	1080,	0x40},	// 007: 1080i-24
/*008*/{281,	50,	742,	2640,	1125,	35,	1920,	194,	18,	1080,	0x40},	// 008: 1080i-25
/*009*/{338,	60,	742,	2200,	1125,	36,	1920,	194,	18,	1080,	0x40},	// 009: 1080i-30
/*010*/{270,	24,	742,	2750,	1125,	33,	1920,	194,	39,	1080,	0x00},	// 010: 1080p-24 (32)
/*011*/{281,	25,	742,	2640,	1125,	33,	1920,	194,	39,	1080,	0x00},	// 011: 1080p-25 (33)
/*012*/{337,	30,	742,	2200,	1125,	33,	1920,	194,	39,	1080,	0x00},	// 012: 1080p-30 (34)
/*013*/{562,	50,	1485,	2640,	1125,	30,	1920,	193,	39,	1080,	0x00},	// 013: 1080p-50 (31)
/*014*/{675,	60,	1485,	2200,	1125,	30,	1920,	193,	39,	1080,	0x00},	// 014: 1080p-60 (16)
/*015*/{157,	60,	270,	1716,	525,	134,	1440,	114,	16,	480,	0x41},	// 015: 480i(1440x480)(6,7)
/*016*/{157,	50,	270,	1728,	625,	124,	1440,	138,	20,	576,	0x41},	// 016: 576i(1440x576)(21,22)
/*017*/{315,	60,	270,	858,	525,	60,	720,	61,	36,	480,	0x00},	// 017: 480p(720x480)(2,3)
/*018*/{313,	50,	270,	864,	625,	74,	720,	69,	42,	576,	0x00},	// 018: 576p(720x576) (17,18)
/*019*/{180,	24,	594,	3300,	750,	40,	1280,	220,	25,	720,	0x00},	// 019: 720p24
/*020*/{188,	25,	743,	3960,	750,	40,	1280,	262,	23,	720,	0x00},	// 020: 720p25
/*021*/{225,	30,	743,	3300,	750,	40,	1280,	261,	23,	720,	0x00},	// 021: 720p30
/*022*/{0,	0,	540,	3432,	262,	283,	2880,	229,	16,	240,	0x01},	// 022: 240p(720x1440)
/*023*/{0,	0,	742,	2200,	563,	35,	1920,	201,	19,	540,	0x00},	// 023: 540p (33.7, 60)
/*024*/{0,	0,	540,	3456,	312,	259,	2880,	277,	20,	288,	0x01}, // 024: 288p(1440x576)
/*025*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 025: 480P_24 (for DTV)
/*026*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 026: 480P_30 (for DTV)
/*027*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 027: 576P_25 (for DTV)
/*028*/{750,	50, 1485,	1980,	1500,	40, 1280,	220,	30, 1470,	0x700}, // 028: for HDMI 3D 720p 50
/*029*/{900,	60, 1485,	1650,	1500,	40, 1280,	220,	30, 1470,	0x700}, // 029: for HDMI 3D 720p 60
/*030*/{540,	24, 1485,	2750,	2250,	44, 1920,	148,	45, 2205,	0x700}, // 030: for HDMI 3D 1080p 24
/*031*/{675,	30, 1485,	2200,	2250,	44, 1920,	148,	22, 2228,	0x740}, // 031: for HDMI 3D 1080i 60, frame packing.
/*032*/{563,	25, 1485,	2640,	2250,	44, 1920,	148,	22, 2228,	0x740}, // 032: for HDMI 3D 1080i 50, frame packing.
/*033*/{1350,60,	2970,2200,	2250,	44, 1920,	148,	36,	2228,	0x700},	// 033: for for HDMI 3D 1080P 60, frame packing.
/*034*/{1125,50,	2970,2640,	2250,	44, 1920,	148,	36,	2228,	0x700},  //34: for for HDMI 3D 1080P 50, frame packing.
/*035*/{675 ,30,	1485,2200,	2250,	44, 1920,	148,	36,	2228,	0x700},//35: 3D for HDMI 3D 1080P 30, frame packing.;
/*036*/{562 ,25,	1485,2640,	2250,	44, 1920,	148,	36,	2228,	0x700},//36: 3D for HDMI 3D 1080P 25, frame packing.;
/*037*/{450,	30,	1485,3300,	1500,	40, 1280,	220,	30,	1470,	0x700},//37: 3D for HDMI 3D 720P 30, frame packing;
/*038*/{375,	25,	1485,3960,	1500,	40, 1280,	220,	30,	1470,	0x700},//38: 3D for HDMI 3D 720P 25, frame packing;
	//HF	VF	P-CLK	HTOTAL	VTOTAL	H-W 	H-Act	H-BP	V(BP+w)	V-Act 
/*039*/{360,	24,	1188,3300,	1500,	40, 1280,	220,	30,	1470,	0x700},	// 039: 3D for HDMI 3D 720P 24, frame packing
/*040*/{625,	50,	540,	864,	 1250,	64,	720,	 69,	42,	1201,	0x00},	// 040: 3D reverse
/*041*/{313,	50,	540,	1728,1250,	126,	1440,138,20,	1226,	0x00},	// 041: 3D reverse
/*042*/{629,	60,	540,	858,	 1060,	62,	720,	 60,	36,	1005,	0x00},	// 042: 3D reverse
/*043*/{315,	60,	540,	1716,1060,	124,	1440, 114,18,	1028,	0x00},	// 043: 3D reverse
/*044*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0},	// 044: 3D reverse
/*045*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0},	// 045: 3D reverse
/*046*/{315,	60,	252,	800,	525,	96,	640,	48,	35,	480,	0x02},	// 046: 640*480*60hz (!--)  DMT1.2

/*047*/{675,	30,	2970,      4400,      2250,	88,	3840,	296,	82,	2160,	0x58},	// 040:  4Kx2K 0x01
/*048*/{562,	25,	2970,	5280,	2250,	88,	3840,	296,	82,	2160,	0x58},	// 041:  4Kx2K 0x02
/*049*/{540,	24,	2970,	5500,	2250,	88,	3840,	296,	82,	2160,	0x58},	// 042:  4Kx2K 0x03
/*050*/{540,	24,	2970,	5500,	2250,	88,	4096,	296,	82,	2160,	0x58},	// 043:  4Kx2K 0x04

/*051*/{1125,	50, 2970,	5280,	2250,	88, 3840,	296,	82, 2160,	0x58},	// 040:  4Kx2K 50 hz 420
/*052*/{1350,	60, 2970,	4400,	2250,	88, 3840,	296,	82, 2160,	0x58},	// 041:  4Kx2K 60 hz 420
/*053*/{1125,	50, 2970,	5280,	2250,	88, 4096,	128,	82, 2160,	0x58},	// 042:  4096Kx2K 50 hz 420
/*054*/{1350,	60, 2970,	4400,	2250,   88, 4096,	128,	82, 2160,	0x58},	// 043:  4096Kx2K 60 hz 420

///*051*/{375,	75,	315,	840,	500,	64,	640,	120,	19,	480,	0x00},	// 051: 640*480*75hz(!--)   DMT1.2
///*052*/{433,	85,	360,	832,	509,	56,	640,	80,	28,	480,	0x00},	// 052: 640*480*85hz(!--)   DMT1.2
///*053*/{352,	56,	360,	1024,	625,	72,	800,	128,	24,	600,	0x98},	// 053: 800*600*56hz(!++)  DMT1.2
///*054*/{352,	56,	360,	1024,	625,	184,	800,	32,	24,	600,	0x80},	// 054: 800*600*56hz(!--) x
/*055*/{379,	60,	400,	1056,	628,	128,	800,	88,	27,	600,	0x18},	// 055: 800*600*60hz(!++) DMT1.2
/*056*/{374,	60,	383,	1024,	624,	80,	800,	112,	21,	600,	0x00},	// 056: 800*600*60hz CVT
/*057*/{370,	60,	355,	960,	618,	32,	800,	80,	15,	600,	0x00},	// 057: 800*600*60hz CVT-RB
/*058*/{480,	72,	500,	1040,	666,	120,	800,	64,	29,	600,	0x18},	// 058: 800*600*72hz(!++) DMT1.2
/*059*/{469,	75,	495,	1056,	625,	80,	800,	160,	24,	600,	0x18},	// 059: 800*600*75hz(!++) DMT1.2
/*060*/{536,	85,	563,	1048,	631,	64,	800,	152,	30,	600,	0x18},	// 060: 800*600*85hz(!++) DMT1.2
/*061*/{497,	75,	572,	1152,	667,	64,	832,	224,	42,	624,	0x00},	// 061: 832*624*74.6hz Mac-16(!--)
/*062*/{298,	60,	315,	1056,	500,	80,	848,	104,	17,	480,	0x00},	// 062:848*480 60Hz(Chroma)
/*063*/{310,	60,	338,	1088,	517,	112,	848,	112,	31,	480,	0x18},	// 063: 848*480 60Hz(!++) DMT1.2
/*064*/{295,	60,	298,	1008,	494,	32,	848,	80,	11,	480,	0x00},	// 064: 848*480 60Hz CVT-RB
/*065*/{302,	60,	336,	1112,	504,	104,	856,	104,	23,	480,	0x00},	// 065: 856*480 60Hz
/*066*/{484,	60,	650,	1344,	806,	136,	1024,	160,	34,	768,	0x00},	// 066: 1024*768*60hz(--DMTvs1280cvt) DMT1.2
/*067*/{0,	0,	650,	1352,	804,	96,	1024,	202,	33,	768,	0x00},	// 067: 1024*768*60hz(--Astro848 Timing)
/*068*/{0,	0,	816,	1688,	806,	130,	1280,	174,	25,	768,	0x00},	// 068: 1280*768*60hz(--Chroma2229 Timing)
/*069*/{0,	0,	801,	1664,	798,	136,	1280,	200,	26,	768,	0x00},	// 069: 1280*768*60hz(--DMTvs1280cvt) // P-Customers suggest remove
/*070*/{478,	60,	635,	1328,	798,	104,	1024,	152,	27,	768,	0x24},	// 070: 1024*768 60Hz CVT! --start
/*071*/{478,	60,	795,	1664,	798,	128,	1280,	192,	27,	768,	0x24},	// 071: 1280*768 60Hz CVT! (-+) DMT1.2
/*072*/{478,	60,	848,	1776,	798,	136,	1360,	208,	27,	768,	0x24},	// 072: 1360*768*60Hz CVT  --end
/*073*/{477,	60,	855,	1792,	795,	112,	1360,	256,	24,	768,	0x00},	// 073: 1360*768*60Hz DMT1.2
/*074*/{473,	60,	560,	1184,	790,	32,	1024,	80,	19,	768,	0x24},	// 074: 1024*768*60Hz CVT-RB! --start
/*075*/{474,	60,	683,	1440,	790,	32,	1280,	80,	19,	768,	0x24},	// 075: 1280*768*60Hz CVT-RB! DMT1.2
/*076*/{474,	60,	720,	1520,	790,	32,	1360,	80,	20,	768,	0x24},	// 076: 1360*768*60Hz CVT-RB! --end
/*077*/{565,	70,	750,	1328,	806,	136,	1024,	144,	34,	768,	0x00},	// 077: 1024*768*70hz (!--) DMT1.2
/*078*/{600,	75,	788,	1312,	800,	96,	1024,	176,	31,	768,	0x18},	// 078: 1024*768*75hz(++) DMT1.2
/*079*/{603,	75,	820,	1360,	805,	104,	1024,	168,	34,	768,	0x2C},	// 079: 1024*768 75Hz CVT --start
/*080*/{603,	75,	1023,	1696,	805,	128,	1280,	208,	34,	768,	0x2C},	// 080: 1280*768 75Hz CVT (-+) DMT1.2	 --end
/*081*/{687,	85,	945,	1376,	809,	104,	1024,	176,	38,	768,	0x2C},	// 081: 1024*768 85Hz CVT --start
/*082*/{686,	85,	1175,	1712,	809,	136,	1280,	216,	38,	768,	0x2C},	// 082: 1280*768 85Hz CVT (-+) DMT1.2 --end
/*083*/{611,	76,	831,	1360,	803,	112,	1024,	168,	34,	768,	0x00},	// 083: 1024*768 76Hz 
/*084*/{537,	60,	817,	1520,	897,	120,	1152,	184,	30,	864,	0x00},	// 084: 1152*864 60Hz new
/*085*/{638,	70,	945,	1480,	912,	96,	1152,	200,	47,	864,	0x00},	// 085: DMT1170 1152*864 70Hz
/*086*/{675,	75,	1080,	1600,	900,	128,	1152,	256,	35,	864,	0x18},	// 086: 1152*864*75hz(!++) DMT1.2
/*087*/{686,	75,	1000,	1456,	915,	128,	1152,	144,	42,	870,	0x00},	// 087: Mac-21 1152*870 75Hz
/*088*/{771,	85,	1215,	1576,	907,	128,	1152,	232,	42,	864,	0x00},	// 088: DMT1185(802BT)
/*089*/{617,	65,	929,	1504,	937,	128,	1152,	195,	35,	900,	0x00},	// 089: SUN1166 1152*900 65Hz
/*090*/{717,	76,	1055,	1472,	943,	96,	1152,	208,	41,	900,	0x00},	// 090: SUN1176 1152*900 76Hz
/*091*/{450,	60,	742,	1650,	750,	31,	1280,	270,	25,	720,	0x00},	// 091: 720P(++) DMT1.2
/*092*/{560,	70,	950,	1696,	802,	128,	1280,	208,	31,	768,	0x00},	// 092: 1280*768 70Hz CVT(70 nonstd)
/*093*/{603,	75,	1023,	1696,	805,	128,	1280,	208,	34,	768,	0x00},	// 093: 1280*768 75Hz CVT
/*094*/{600,	60,	1080,	1800,	1000,	112,	1280,	312,	39,	960,	0x18},	// 094: 1280x0960x60HZ(!++)  DMT1.2
/*095*/{752,	75,	1300,	1728,	1005,	136,	1280,	224,	42,	960,	0x08},	// 095: 1280*960 75Hz CVT
/*096*/{859,	85,	1485,	1728,	1011,	160,	1280,	224,	50,	960,	0x18},	// 096: 1280x0960x85HZ(++) DMT1.2
/*097*/{639,	60,	1080,	1688,	1066,	112,	1280,	248,	41,	1024,	0x18},	// 097: 1280*1024*60hz(++) DMT1.2
/*098*/{800,	75,	1330,	1664,	1066,	144,	1280,	248,	41,	1024,	0x18},	// 098: 1280*1024*75hz(++) DMT1.2
/*099*/{911,	85,	1575,	1728,	1072,	160,	1280,	224,	47,	1024,	0x18},	// 099: 1280*1024*85hz(++) DMT1.2
/*100*/{647,	60,	1010,	1560,	1080,	32,	1400,	80,	27,	1050,	0x34},	// 100: 1400*1050*60hz CVT-RB(+-) DMT1.2--start
/*101*/{647,	60,	1190,	1840,	1080,	32,	1680,	80,	27,	1050,	0x34},	// 101: 1680*1050*60hz CVT-RB (+-) DMT1.2--end 
/*102*/{653,	60,	1218,	1864,	1089,	144,	1400,	232,	36,	1050,	0x2C},	// 102: 1400*1050*60hz CVT (-+) DMT1.2--start 
/*103*/{653,	60,	1463,	2240,	1089,	176,	1680,	280,	36,	1050,	0x2C},	// 103: 1680*1050*60hz CVT (-+) DMT1.2--end
/*104*/{823,	75,	1560,	1896,	1099,	144,	1400,	248,	46,	1050,	0x08},	// 104: 1400*1050*75hz CVT (-+) DMT1.2
/*105*/{555,	60,	888,	1600,	926,	32,	1440,	80,	23,	900,	0x10},	// 105: 1440*900*60hz CVT-RB (+-) DMT1.2
/*106*/{559,	60,	1065,	1904,	934,	152,	1440,	232,	31,	900,	0x08},	// 106: 1440*900*60hz CVT (-+) DMT1.2
/*107*/{706,	75,	1368,	1936,	942,	152,	1440,	248,	39,	900,	0x08},	// 107: 1440*900*75hz CVT (-+) DMT1.2
/*108*/{750,	60,	1620,	2160,	1250,	192,	1600,	304,	49,	1200,	0x00},	// 108: 1600*1200*60hz (++) DMT1.2
/*109*/{666,	60,	1385,	2080,	1111,	32,	1920,	80,	28,	1080,	0x10},	// 109: 1920*1080*60hz CVT-RB (-+) DMT1.2
/*110*/{740,	60,	1540,	2080,	1235,	32,	1920,	80,	32,	1200,	0x10},	// 110: 1920*1200*60hz CVT-RB
/*111*/{717,	67,	1170,	1632,	1067,	112,	1280,	224,	41,	1024,	0x10},	// 111: 1280*1024*67hz
/*112*/{670,	60,	1728,	2576,	1118,	208,	1920,	328,	37,	1080,	0x00},	// 112: 1920*1080*60Hz(VSC 1960H)
/*113*/{675,	60,	1485,	2200,	1125,	30,	1920,	205,	41,	1080,	0x00},	// 113: 1080p-60 (++) DMT1.2
//HF	VF	P-CLK	HTOTAL	VTOTAL	H(Bp+W)	H-Act	H-BP	V(BP+w)	V-Act  //USER MODE
///*114*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 114: UserMode Entry
///*115*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 115: UserMode Entry
///*116*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 116: UserMode Entry
///*117*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 117: UserMode Entry
/*118*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 118: UserMode Entry
/*119*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 119: UserMode Entry
/*120*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*121*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*122*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*123*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*124*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*125*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*126*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*127*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*128*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*129*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*130*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*131*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*132*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*133*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*134*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*135*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*136*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*137*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*138*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*139*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*140*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*141*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*142*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*143*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*144*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*145*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*146*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*147*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*148*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*149*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*150*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*151*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*152*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*153*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*154*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*155*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*156*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*157*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*158*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*159*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*160*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*161*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*162*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*163*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*164*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*165*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*166*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*167*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*168*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*169*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*170*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*171*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*172*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*173*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*174*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*175*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*176*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*177*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*178*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*179*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*180*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*181*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*182*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*183*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*184*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*185*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*186*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*187*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*188*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*189*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry	
/*190*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*191*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*192*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*193*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*194*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*195*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*196*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*197*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*198*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*199*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*200*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*201*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*202*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*203*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*204*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*205*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*206*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*207*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*208*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*209*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*210*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*211*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*212*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*213*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*214*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*215*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*216*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*217*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*218*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*219*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*220*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*221*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*222*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*223*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*224*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*225*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*226*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*227*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*228*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*229*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*230*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*231*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*232*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*233*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*234*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*235*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*236*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*237*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*238*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*239*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*240*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*241*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*242*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*243*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 084: UserMode Entry
/*244*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 085: UserMode Entry
/*245*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 086: UserMode Entry
/*246*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 087: UserMode Entry
/*247*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 088: UserMode Entry
/*248*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 089: UserMode Entry
/*249*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 090: UserMode Entry
/*250*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*251*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
/*252*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 083: UserMode Entry
/*253*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 120: UserMode Entry
/*254*/{0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0x00},	// 121: UserMode Entry
//HF	VF	P-CLK	HTOTAL	VTOTAL	H(Bp+W)	H-Act	H-BP	V(BP+w)	V-Act
};

#define USERMODE_TIMING 8 
#define HDTV_TIMING_NUM	55
#define ALL_TIMING_NUM (sizeof(VGATIMING_TABLE)/sizeof(VGAMODE))


#endif // _VGA_CUSTOMIZATION_H_
