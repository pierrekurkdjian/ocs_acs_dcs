#ifndef _resistor_bridge_status_t_h_
#define _resistor_bridge_status_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct resistor_bridge_status_t {
    bool                     bridge_overrange;    // bridge_overrange
    bool                     bridge_data_invalid; // bridge_data_invalid
    bool                     bridge_error;        // bridge_error
    bool                     bridge_calibrating;  // bridge_calibrating
    bool                     bridge_steady_state; // bridge_steady_state
    bool                     bridge_sync_error;   // bridge_sync_error
    bool                     bridge_toggle;       // bridge_toggle
    float                    bridge_real_value;   // bridge_real_value
    MSGPACK_DEFINE_MAP(bridge_overrange, bridge_data_invalid, bridge_error, bridge_calibrating, bridge_steady_state, bridge_sync_error, bridge_toggle, bridge_real_value)
};


#endif // _resistor_bridge_status_t_h_
