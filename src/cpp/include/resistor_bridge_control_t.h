#ifndef _resistor_bridge_control_t_h_
#define _resistor_bridge_control_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct resistor_bridge_control_t {
    bool                     bridge_start_calibration; // bridge_start_calibration
    bool                     bridge_disable_calibration; // bridge_disable_calibration
    bool                     bridge_input_freeze; // bridge_input_freeze
    bool                     bridge_sample_mode;  // bridge_sample_mode
    bool                     bridge_tara;         // bridge_tara
    MSGPACK_DEFINE_MAP(bridge_start_calibration, bridge_disable_calibration, bridge_input_freeze, bridge_sample_mode, bridge_tara)
};


#endif // _resistor_bridge_control_t_h_
