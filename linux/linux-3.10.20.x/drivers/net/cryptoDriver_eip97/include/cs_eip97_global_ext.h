/* cs_eip97_global_ext.h
 *
 * Top-level configuration parameters extensions
 * for the EIP-97 Global Control Driver Library
 *
 */

/*****************************************************************************
* Copyright (c) 2012-2013 INSIDE Secure B.V. All Rights Reserved.
*
* This confidential and proprietary software may be used only as authorized
* by a licensing agreement from INSIDE Secure.
*
* The entire notice above must be reproduced on all authorized copies that
* may only be made to the extent permitted by a licensing agreement from
* INSIDE Secure.
*
* For more information or support, please go to our online support system at
* https://essoemsupport.insidesecure.com.
* In case you do not have an account for
* this system, please send an e-mail to ESSEmbeddedHW-Support@insidesecure.com.
*****************************************************************************/

#ifndef CS_EIP97_GLOBAL_EXT_H_
#define CS_EIP97_GLOBAL_EXT_H_



/*----------------------------------------------------------------------------
 * Definitions and macros
 */

// Define this parameter in order to configure the DFE and DSE ring priorities
#define EIP97_GLOBAL_DFE_DSE_PRIO_CONFIGURE

// EIP-207s Classification Support, DMA Control base address
#define EIP97_RC_BASE      0x37000

// EIP-207s Classification Support, DMA Control base address
#define EIP97_BASE         0x1FFF4


#endif /* CS_EIP97_GLOBAL_EXT_H_ */


/* end of file cs_eip97_global_ext.h */
