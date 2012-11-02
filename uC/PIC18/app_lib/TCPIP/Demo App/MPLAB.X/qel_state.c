#include "qel_state.h"

void           update_system_state(SYSTEM_STATE_STRUCT * sys, system_state_t state)
{
    if (sys->state == state)
       return;

    sys->state = state;
    sys->tcp_update = TCP_IS_UPDATE;

    return;
}

void

system_state_t    get_system_state(SYSTEM_STATE_STRUCT * sys)
{
    return sys->state;
}


