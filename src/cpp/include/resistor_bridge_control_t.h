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
    bool                     bridge_mode0_enable_filter; // bridge_mode0_enable_filter (to module)
    bool                     bridge_mode1_enable_filter; // bridge_mode1_enable_filter (to module)
    bool                     bridge_mode0_enable_averager; // bridge_mode0_enable_averager (to module)
    bool                     bridge_mode1_enable_averager; // bridge_mode1_enable_averager (to module)
    uint16_t                 bridge_mode0_filter_settings; // bridge_mode0_filter_settings (to module)
    uint16_t                 bridge_mode1_filter_settings; // bridge_mode1_filter_settings (to module)
    uint16_t                 bridge_dynamic_filter_change_time; // bridge_dynamic_filter_change_time (to module)
    float                    bridge_dynamic_filter_delta; // bridge_dynamic_filter_delta (to module)
    uint16_t                 bridge_filter_settings; // bridge_filter_settings (to module)
    float                    bridge_gain;         // bridge_gain (to module)
    float                    bridge_tara;         // bridge_tara (to module)
    float                    bridge_rated_output; // bridge_rated_output (to module)
    float                    bridge_nominal_load; // bridge_nominal_load (to module)
    float                    bridge_filter_zero_balance; // bridge_filter_zero_balance (to module)
    float                    bridge_gravity_of_earth; // bridge_gravity_of_earth (to module)
    float                    bridge_scale_factor; // bridge_scale_factor (to module)
    float                    bridge_reference_load; // bridge_reference_load (to module)
    float                    coeff_compression_a0; // a0
    float                    coeff_compression_a1; // a1*V
    float                    coeff_compression_a2; // a2*V*V
    float                    coeff_tension_a0;    // a0
    float                    coeff_tension_a1;    // a1*V
    float                    coeff_tension_a2;    // a2*V*V
    MSGPACK_DEFINE_MAP(bridge_start_calibration, bridge_disable_calibration, bridge_input_freeze, bridge_sample_mode, bridge_mode0_enable_filter, bridge_mode1_enable_filter, bridge_mode0_enable_averager, bridge_mode1_enable_averager, bridge_mode0_filter_settings, bridge_mode1_filter_settings, bridge_dynamic_filter_change_time, bridge_dynamic_filter_delta, bridge_filter_settings, bridge_gain, bridge_tara, bridge_rated_output, bridge_nominal_load, bridge_filter_zero_balance, bridge_gravity_of_earth, bridge_scale_factor, bridge_reference_load, coeff_compression_a0, coeff_compression_a1, coeff_compression_a2, coeff_tension_a0, coeff_tension_a1, coeff_tension_a2)
};


#endif // _resistor_bridge_control_t_h_
