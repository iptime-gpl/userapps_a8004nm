#ifndef __reg_map_h
#define __reg_map_h

/*
 * This file is autogenerated from
 *   file:            ../../mod/fakereg.rmap
 *     id:            fakereg.rmap,v 1.3 2004/02/11 19:53:22 ronny Exp 
 *     last modified: Wed Feb 11 20:53:25 2004
 *   file:            ../../rtl/global.rmap
 *     id:            global.rmap,v 1.3 2003/08/18 15:08:23 mikaeln Exp 
 *     last modified: Mon Aug 18 17:08:23 2003
 *   file:            ../../mod/modreg.rmap
 *     id:            modreg.rmap,v 1.31 2004/02/20 15:40:04 stefans Exp 
 *     last modified: Fri Feb 20 16:40:04 2004
 * 
 *   by /n/asic/design/tools/rdesc/src/rdes2c -asm --outfile asm/reg_map_asm.h -base 0xb0000000 ../../rtl/global.rmap ../../mod/modreg.rmap ../../inst/memarb/rtl/guinness/marb_top.r ../../mod/fakereg.rmap
 *      id: $Id: reg_map_asm.h,v 1.1.1.1 2016/07/21 08:20:57 mt7623 Exp $ 
 * Any changes here will be lost.
 *
 * -*- buffer-read-only: t -*-
 */
#define regi_artpec_mod                           0xb7044000
#define regi_ata                                  0xb0032000
#define regi_ata_mod                              0xb7006000
#define regi_barber                               0xb701a000
#define regi_bif_core                             0xb0014000
#define regi_bif_dma                              0xb0016000
#define regi_bif_slave                            0xb0018000
#define regi_bif_slave_ext                        0xac000000
#define regi_bus_master                           0xb703c000
#define regi_config                               0xb003c000
#define regi_dma0                                 0xb0000000
#define regi_dma1                                 0xb0002000
#define regi_dma2                                 0xb0004000
#define regi_dma3                                 0xb0006000
#define regi_dma4                                 0xb0008000
#define regi_dma5                                 0xb000a000
#define regi_dma6                                 0xb000c000
#define regi_dma7                                 0xb000e000
#define regi_dma8                                 0xb0010000
#define regi_dma9                                 0xb0012000
#define regi_eth0                                 0xb0034000
#define regi_eth1                                 0xb0036000
#define regi_eth_mod                              0xb7004000
#define regi_eth_mod1                             0xb701c000
#define regi_eth_strmod                           0xb7008000
#define regi_eth_strmod1                          0xb7032000
#define regi_ext_dma                              0xb703a000
#define regi_ext_mem                              0xb7046000
#define regi_gen_io                               0xb7016000
#define regi_gio                                  0xb001a000
#define regi_hook                                 0xb7000000
#define regi_iop                                  0xb0020000
#define regi_irq                                  0xb001c000
#define regi_irq_nmi                              0xb701e000
#define regi_marb                                 0xb003e000
#define regi_marb_bp0                             0xb003e240
#define regi_marb_bp1                             0xb003e280
#define regi_marb_bp2                             0xb003e2c0
#define regi_marb_bp3                             0xb003e300
#define regi_nand_mod                             0xb7014000
#define regi_p21                                  0xb002e000
#define regi_p21_mod                              0xb7042000
#define regi_pci_mod                              0xb7010000
#define regi_pin_test                             0xb7018000
#define regi_pinmux                               0xb0038000
#define regi_sdram_chk                            0xb703e000
#define regi_sdram_mod                            0xb7012000
#define regi_ser0                                 0xb0026000
#define regi_ser1                                 0xb0028000
#define regi_ser2                                 0xb002a000
#define regi_ser3                                 0xb002c000
#define regi_ser_mod0                             0xb7020000
#define regi_ser_mod1                             0xb7022000
#define regi_ser_mod2                             0xb7024000
#define regi_ser_mod3                             0xb7026000
#define regi_smif_stat                            0xb700e000
#define regi_sser0                                0xb0022000
#define regi_sser1                                0xb0024000
#define regi_sser_mod0                            0xb700a000
#define regi_sser_mod1                            0xb700c000
#define regi_strcop                               0xb0030000
#define regi_strmux                               0xb003a000
#define regi_strmux_tst                           0xb7040000
#define regi_tap                                  0xb7002000
#define regi_timer                                0xb001e000
#define regi_timer_mod                            0xb7034000
#define regi_trace                                0xb0040000
#define regi_usb0                                 0xb7028000
#define regi_usb1                                 0xb702a000
#define regi_usb2                                 0xb702c000
#define regi_usb3                                 0xb702e000
#define regi_usb_dev                              0xb7030000
#define regi_utmi_mod0                            0xb7036000
#define regi_utmi_mod1                            0xb7038000
#endif /* __reg_map_h */
