/* $Id: adapter.h,v 1.1.1.1 2016/07/21 08:21:25 mt7623 Exp $ */

#ifndef __DIVA_USER_MODE_IDI_ADAPTER_H__
#define __DIVA_USER_MODE_IDI_ADAPTER_H__

#define DIVA_UM_IDI_ADAPTER_REMOVED 0x00000001

typedef struct _diva_um_idi_adapter {
	struct list_head link;
	DESCRIPTOR d;
	int adapter_nr;
	struct list_head entity_q;	/* entities linked to this adapter */
	dword status;
} diva_um_idi_adapter_t;


#endif
