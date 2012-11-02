/* 
 * File:   qel_state.h
 * Author: Brock Anderson
 *
 * Created on November 2, 2012, 9:08 AM
 */

#ifndef QEL_STATE_H
#define	QEL_STATE_H

#ifdef	__cplusplus
extern "C" {
#endif

#define NFC_DATA_SIZE 32

typedef enum
{
    SYS_INIT = 0,              // system is booting up
    SYS_LOCKED_WAITING,        // locked waiting for NFC
    SYS_NFC_AUTH_WAITING,      // card received, waiting for auth from server
    SYS_TEMPORARY_UNLOCK,      // temporarily unlocked after reading NFC
    SYS_LOCKING_TO_WAIT,       // locking after allowing access via NFC
    SYS_UNLOCKED_HOLDING,      // unlocked indefinitely
    SYS_UNLOCKING_TO_HOLD,     // unlocking to allow indefinite unlock
    SYS_LOCKED_HOLDING,        // indefinitely locked
    SYS_LOCKING_TO_HOLD        // locking to lock indefinitely

} system_state_t;

typedef enum
{
    NFC_NO_REQUEST = 0,
    NFC_IS_REQUEST

} nfc_request_t;

typedef enum
{
    TCP_NO_UPDATE = 0,
    TCP_IS_UPDATE
} tcp_update_t;

typedef struct
{
    system_state_t state;
    nfc_request_t  nfc_request;
    tcp_update_t   tcp_update;
    unsigned char nfc_data[NFC_DATA_SIZE];


} SYSTEM_STATE_STRUCT;

// interface functions for state
void           update_system_state(SYSTEM_STATE_STRUCT * sys,
                                   system_state_t state);

void request_nfc(SYSTEM_STATE_STRUCT * sys, )

system_state_t    get_system_state(SYSTEM_STATE_STRUCT * sys);



#ifdef	__cplusplus
}
#endif

#endif	/* QEL_STATE_H */

