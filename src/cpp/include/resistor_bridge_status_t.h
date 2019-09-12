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
    int32_t                  bridge_int_value;    // bridge_int_value
    int32_t                  bridge_real_value;   // bridge_int_value
    float                    bridge_weight_kg;    // bridge_weight_kg
    bool                     bridge_mode0_enable_filter; // bridge_mode0_enable_filter (from module)
    bool                     bridge_mode1_enable_filter; // bridge_mode1_enable_filter (from module)
    bool                     bridge_mode0_enable_averager; // bridge_mode0_enable_averager (from module)
    bool                     bridge_mode1_enable_averager; // bridge_mode1_enable_averager (from module)
    uint16_t                 bridge_mode0_filter_settings; // bridge_mode0_filter_settings (from module)
    uint16_t                 bridge_mode1_filter_settings; // bridge_mode1_filter_settings (from module)
    uint16_t                 bridge_dynamic_filter_change_time; // bridge_dynamic_filter_change_time (from module)
    float                    bridge_dynamic_filter_delta; // bridge_dynamic_filter_delta (from module)
    uint16_t                 bridge_filter_settings; // bridge_filter_settings (from module)
    float                    bridge_gain;         // bridge_gain (from module)
    float                    bridge_tara;         // bridge_tara (from module)
    float                    bridge_rated_output; // bridge_rated_output (from module)
    float                    bridge_nominal_load; // bridge_nominal_load (from module)
    float                    bridge_filter_zero_balance; // bridge_filter_zero_balance (from module)
    float                    bridge_gravity_of_earth; // bridge_gravity_of_earth (from module)
    float                    bridge_scale_factor; // bridge_scale_factor (from module)
    float                    bridge_reference_load; // bridge_reference_load (from module)
    MSGPACK_DEFINE_MAP(bridge_overrange, bridge_data_invalid, bridge_error, bridge_calibrating, bridge_steady_state, bridge_sync_error, bridge_toggle, bridge_int_value, bridge_real_value, bridge_weight_kg, bridge_mode0_enable_filter, bridge_mode1_enable_filter, bridge_mode0_enable_averager, bridge_mode1_enable_averager, bridge_mode0_filter_settings, bridge_mode1_filter_settings, bridge_dynamic_filter_change_time, bridge_dynamic_filter_delta, bridge_filter_settings, bridge_gain, bridge_tara, bridge_rated_output, bridge_nominal_load, bridge_filter_zero_balance, bridge_gravity_of_earth, bridge_scale_factor, bridge_reference_load)
};


#endif // _resistor_bridge_status_t_h_
