#include "qel_action.h"
#include "HWP PICDN2_ETH97.h"
    void qel_action_unlock()
    {
        LED2_IO = QEL_DRIVE_IO =  1;
        LED3_IO = 0;
    }


    void qel_action_lock()
    {
        LED2_IO = QEL_DRIVE_IO =  0;
        LED3_IO = 1;
    }
