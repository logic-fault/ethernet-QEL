/*-------------------------------------------------------------------------------
* Name:        QELink
* Purpose:     state machine interface
*
* Author:      Brock Anderson
*
* Created:     2 November 2012
* Copyright:   (c) Brock Anderson 2012
* Licence:   All rights reserved.
*            Not permitted for commercial use.
*/
#include "qel_state.h"

void           update_system_state(SYSTEM_STATE_STRUCT * sys, system_state_t state)
{
    if (sys->state == state)
       return;

    sys->state = state;
    sys->tcp_update = TCP_IS_UPDATE;

    return;
}

void clear_update_system_state(SYSTEM_STATE_STRUCT * sys)
{
    sys->tcp_update = TCP_NO_UPDATE;
    return;
}

void request_nfc_state(SYSTEM_STATE_STRUCT * sys, unsigned char * buf)
{
    unsigned char * buf_ptr = buf;
    unsigned char * nfc_ptr = sys->nfc_data;

    // don't allow another request while one is still being processed
    if (sys->nfc_request == NFC_IS_REQUEST)
    {
        return;
    }

    // copy until zero terminated or end of datasizes
    while(*nfc_ptr++ = *buf_ptr++ && (nfc_ptr < sys->nfc_data + NFC_DATA_SIZE));

    sys->nfc_request = NFC_IS_REQUEST;
}

void init_system_state(SYSTEM_STATE_STRUCT * sys)
{
    sys->nfc_request = NFC_NO_REQUEST;
    sys->nfc_data[0] = 0;
    sys->state       = SYS_INIT;
    sys->tcp_update  = TCP_NO_UPDATE;
}

void clear_nfc_state(SYSTEM_STATE_STRUCT * sys)
{
    sys->nfc_request = NFC_NO_REQUEST;
}

system_state_t    get_system_state(SYSTEM_STATE_STRUCT * sys)
{
    return sys->state;
}


