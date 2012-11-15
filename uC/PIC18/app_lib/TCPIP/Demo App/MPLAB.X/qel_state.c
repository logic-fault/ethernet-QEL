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

#include "TCPIPConfig.h"
#include "qel_state.h"
#include "qel_action.h"

#pragma udata udata_state

void           update_system_state(SYSTEM_STATE_STRUCT * sys, system_state_t state)
{
    if (sys->state == state)
       return;

    sys->tcp_update = TCP_IS_UPDATE;
    sys->tick_enter_state = TickGet();

    switch(state)
    {
        case     SYS_INIT:              // system is booting up
            qel_action_lock();
            break;

        case     SYS_LOCKED_WAITING:        // locked waiting for NFC
            qel_action_lock();
            break;

        case     SYS_NFC_AUTH_WAITING:      // card received, waiting for auth from server
            qel_action_lock();
            sys->tcp_update = TCP_NO_UPDATE;
            sys->nfc_request = NFC_IS_REQUEST;
            break;

        case     SYS_TEMPORARY_UNLOCK:      // temporarily unlocked after reading NFC
            qel_action_unlock();
            break;

        case     SYS_LOCKING_TO_WAIT:       // locking after allowing access via NFC
            qel_action_lock();
            break;

        case     SYS_UNLOCKED_HOLDING:      // unlocked indefinitely
            qel_action_unlock();
            break;

        case     SYS_UNLOCKING_TO_HOLD:     // unlocking to allow indefinite unlock
            qel_action_unlock();
            break;

        case     SYS_LOCKED_HOLDING:        // indefinitely locked
            qel_action_lock();
            break;

        case     SYS_LOCKING_TO_HOLD:        // locking to lock indefinitely
            qel_action_lock();
            break;
            
        default:
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
    sys->tick_enter_state = TickGet();
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
    DWORD cur_tick;

    cur_tick = TickGet();

    switch(get_system_state(sys))
    {
        case     SYS_INIT:              // system is booting up
            if (cur_tick - INIT_DELAY_SECONDS > sys->tick_enter_state)
                update_system_state(sys, SYS_LOCKED_WAITING);
            break;
        case     SYS_LOCKED_WAITING:        // locked waiting for NFC
            break;
        case     SYS_NFC_AUTH_WAITING:      // card received, waiting for auth from server
            break;
        case     SYS_TEMPORARY_UNLOCK:      // temporarily unlocked after reading NFC
            if (cur_tick - INIT_DELAY_SECONDS > sys->tick_enter_state)
                update_system_state(sys, SYS_LOCKING_TO_WAIT);
            break;
        case     SYS_LOCKING_TO_WAIT:       // locking after allowing access via NFC
            update_system_state(sys, SYS_NFC_AUTH_WAITING);
            break;
        case     SYS_UNLOCKED_HOLDING:      // unlocked indefinitely
            // must exit this state using webserver or tcp client
            break;
        case     SYS_UNLOCKING_TO_HOLD:     // unlocking to allow indefinite unlock
            update_system_state(sys, SYS_UNLOCKED_HOLDING);
            break;
        case     SYS_LOCKED_HOLDING:        // indefinitely locked
            // must exit this state using webserver or tcp client
            break;
        case     SYS_LOCKING_TO_HOLD:        // locking to lock indefinitely
            update_system_state(sys, SYS_LOCKED_HOLDING);
            break;
        default:
            break;
    }
}
