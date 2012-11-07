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

    switch(state)
    {
        case SYS_NFC_AUTH_WAITING:
            sys->nfc_request == NFC_IS_REQUEST;
            break;
        default:
            sys->tcp_update = TCP_IS_UPDATE;
            break;
    }
    sys->state = state;

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

const unsigned char * get_system_name(SYSTEM_STATE_STRUCT * sys)
{
    return sys->qel_name;
}


void handle_state(SYSTEM_STATE_STRUCT * sys)
{
    switch(get_system_state(sys))
    {
        case     SYS_INIT:              // system is booting up
            break;
        case     SYS_LOCKED_WAITING:        // locked waiting for NFC
            break;
        case     SYS_NFC_AUTH_WAITING:      // card received, waiting for auth from server
            break;
        case     SYS_TEMPORARY_UNLOCK:      // temporarily unlocked after reading NFC
            break;
        case     SYS_LOCKING_TO_WAIT:       // locking after allowing access via NFC
            break;
        case     SYS_UNLOCKED_HOLDING:      // unlocked indefinitely
            break;
        case     SYS_UNLOCKING_TO_HOLD:     // unlocking to allow indefinite unlock
            break;
        case     SYS_LOCKED_HOLDING:        // indefinitely locked
            break;
        case     SYS_LOCKING_TO_HOLD:        // locking to lock indefinitely
            break;
        default:
            break;
    }
}
