StructType "m1acs_digital_in_t",
    desc: "m1acs_digital_in_t"
    elements:
        digital_in_1_value:    { desc: "digital_in_1_value",       type: "bool",     units: "" }
        digital_in_2_value:    { desc: "digital_in_2_value",         type: "bool",     units: "" }
        digital_in_3_value:    { desc: "digital_in_3_value",       type: "bool",     units: "" }
        digital_in_4_value:    { desc: "digital_in_4_value",         type: "bool",     units: "" }
        digital_in_5_value:    { desc: "digital_in_5_value",       type: "bool",     units: "" }
        digital_in_6_value:    { desc: "digital_in_6_value",         type: "bool",     units: "" }
        digital_in_7_value:    { desc: "digital_in_7_value",       type: "bool",     units: "" }
        digital_in_8_value:    { desc: "digital_in_8_value",         type: "bool",     units: "" }

StructType "m1acs_digital_out_t",
    desc: "m1acs_digital_out_t",
    elements:
        digital_out_1_value:   { desc: "digital_out_1_value", type: "bool", units: "" }
        digital_out_2_value:   { desc: "digital_out_2_value", type: "bool", units: "" }
        digital_out_3_value:   { desc: "digital_out_3_value", type: "bool", units: "" }
        digital_out_4_value:   { desc: "digital_out_4_value", type: "bool", units: "" }
        digital_out_5_value:   { desc: "digital_out_5_value", type: "bool", units: "" }
        digital_out_6_value:   { desc: "digital_out_6_value", type: "bool", units: "" }
        digital_out_7_value:   { desc: "digital_out_7_value", type: "bool", units: "" }
        digital_out_8_value:   { desc: "digital_out_8_value", type: "bool", units: "" }

StructType "m1acs_analog_in_t",
    desc: "m1acs_analog_in_t"
    elements:
        analog_in_1_value:     { desc: "analog_in_1_value",       type: "uint16",     units: "" }
        analog_in_2_value:     { desc: "analog_in_2_value",         type: "uint16",     units: "" }


StructType "m1acs_analog_out_t",
    desc:    "m1acs_analog_out_t"
    elements:
        analog_out_1_value:    { desc: "analog_out_1_value", type: "uint16", units: "" }
        analog_out_2_value:    { desc: "analog_out_2_value", type: "uint16", units: "" }

StructType "m1acs_ssi_in_t",
    desc:    "m1acs_ssi_in_t"
    elements:
        ssi_in_1_data_error:     { desc: "ssi_in_1_data_error",    type: "bool", units: "" }
        ssi_in_1_frame_error:    { desc: "ssi_in_1_frame_error",   type: "bool", units: "" }
        ssi_in_1_power_error:    { desc: "ssi_in_1_power_error",   type: "bool", units: "" }
        ssi_in_1_data_mismatch:  { desc: "ssi_in_1_data_mismatch", type: "bool", units: "" }
        ssi_in_1_sync_error:     { desc: "ssi_in_1_sync_error",    type: "bool", units: "" }
        ssi_in_1_value:          { desc: "ssi_in_1_value",         type: "uint32", units: "" }
        ssi_in_2_data_error:     { desc: "ssi_in_2_data_error",    type: "bool", units: "" }
        ssi_in_2_frame_error:    { desc: "ssi_in_2_frame_error",   type: "bool", units: "" }
        ssi_in_2_power_error:    { desc: "ssi_in_2_power_error",   type: "bool", units: "" }
        ssi_in_2_data_mismatch:  { desc: "ssi_in_2_data_mismatch", type: "bool", units: "" }
        ssi_in_2_sync_error:     { desc: "ssi_in_2_sync_error",    type: "bool", units: "" }
        ssi_in_2_value:          { desc: "ssi_in_2_value",         type: "uint32", units: "" }

StructType "m1acs_power_supply_t",
    desc: "m1acs_power supply state",
    elements:
        power_on:              { desc: "power_on",              type: "bool", units: "" }
        power_overload:        { desc: "power_overload",        type: "bool", units: "" }

StructType "m1acs_resistor_bridge_status_t",
    desc: "m1acs_resistor bridge status",
    elements:
        bridge_overrange:          { desc: "bridge_overrange",            type: "bool", units: "" }
        bridge_data_invalid:       { desc: "bridge_data_invalid",         type: "bool", units: "" }
        bridge_error:              { desc: "bridge_error",                type: "bool", units: "" }
        bridge_calibrating:        { desc: "bridge_calibrating",          type: "bool", units: "" }
        bridge_steady_state:       { desc: "bridge_steady_state",         type: "bool", units: "" }
        bridge_sync_error:         { desc: "bridge_sync_error",           type: "bool", units: "" }
        bridge_toggle:             { desc: "bridge_toggle",               type: "bool", units: "" }
        bridge_int_value:          { desc: "bridge_int_value",            type: "int32", units: "" }
        bridge_real_value:         { desc: "bridge_int_value",            type: "int32", units: "" }

        bridge_weight_kg:          { desc: "bridge_weight_kg",            type: "float", units: "" }

        bridge_serial_number:              { desc: "bridge_serial_number (from module)",              type: "uint32", units: "" }
        bridge_mode0_enable_filter:        { desc: "bridge_mode0_enable_filter (from module)",        type: "bool",   units: "" }
        bridge_mode1_enable_filter:        { desc: "bridge_mode1_enable_filter (from module)",        type: "bool",   units: "" }
        bridge_mode0_enable_averager:      { desc: "bridge_mode0_enable_averager (from module)",      type: "bool",   units: "" }
        bridge_mode1_enable_averager:      { desc: "bridge_mode1_enable_averager (from module)",      type: "bool",   units: "" }
        bridge_mode0_filter_settings:      { desc: "bridge_mode0_filter_settings (from module)",      type: "uint16", units: "" }
        bridge_mode1_filter_settings:      { desc: "bridge_mode1_filter_settings (from module)",      type: "uint16", units: "" }
        bridge_dynamic_filter_change_time: { desc: "bridge_dynamic_filter_change_time (from module)", type: "uint16", units: "" }
        bridge_dynamic_filter_delta:       { desc: "bridge_dynamic_filter_delta (from module)",       type: "float",  units: "" }
        bridge_filter_settings:            { desc: "bridge_filter_settings (from module)",            type: "uint16", units: "" }
        bridge_gain:                       { desc: "bridge_gain (from module)",                       type: "float",  units: "" }
        bridge_tara_float:                 { desc: "bridge_tara_float (from module)",                 type: "float",  units: "" }
        bridge_rated_output:               { desc: "bridge_rated_output (from module)",               type: "float",  units: "" }
        bridge_nominal_load:               { desc: "bridge_nominal_load (from module)",               type: "float",  units: "" }
        bridge_filter_zero_balance:        { desc: "bridge_filter_zero_balance (from module)",        type: "float",  units: "" }
        bridge_gravity_of_earth:           { desc: "bridge_gravity_of_earth (from module)",           type: "float",  units: "" }
        bridge_scale_factor:               { desc: "bridge_scale_factor (from module)",               type: "float",  units: "" }
        bridge_reference_load:             { desc: "bridge_reference_load (from module)",             type: "float",  units: "" }

StructType "m1acs_resistor_bridge_control_t",
    desc: "m1acs_resistor bridge control",
    elements:
        bridge_start_calibration:    { desc: "bridge_start_calibration",     type: "bool",  units: "" }
        bridge_disable_calibration:  { desc: "bridge_disable_calibration",   type: "bool",  units: "" }
        bridge_input_freeze:         { desc: "bridge_input_freeze",          type: "bool",  units: "" }
        bridge_sample_mode:          { desc: "bridge_sample_mode",           type: "bool",  units: "" }
        bridge_tara:                 { desc: "bridge_tara",                  type: "bool",  units: "" }

        bridge_mode0_enable_filter:        { desc: "bridge_mode0_enable_filter (to module)",        type: "bool",   units: "" }
        bridge_mode1_enable_filter:        { desc: "bridge_mode1_enable_filter (to module)",        type: "bool",   units: "" }
        bridge_mode0_enable_averager:      { desc: "bridge_mode0_enable_averager (to module)",      type: "bool",   units: "" }
        bridge_mode1_enable_averager:      { desc: "bridge_mode1_enable_averager (to module)",      type: "bool",   units: "" }
        bridge_mode0_filter_settings:      { desc: "bridge_mode0_filter_settings (to module)",      type: "uint16", units: "" }
        bridge_mode1_filter_settings:      { desc: "bridge_mode1_filter_settings (to module)",      type: "uint16", units: "" }
        bridge_dynamic_filter_change_time: { desc: "bridge_dynamic_filter_change_time (to module)", type: "uint16", units: "" }
        bridge_dynamic_filter_delta:       { desc: "bridge_dynamic_filter_delta (to module)",       type: "float",  units: "" }
        bridge_filter_settings:            { desc: "bridge_filter_settings (to module)",            type: "uint16", units: "" }
        bridge_gain:                       { desc: "bridge_gain (to module)",                       type: "float",  units: "" }
        bridge_tara_float:                 { desc: "bridge_tara_float (to module)",                       type: "float",  units: "" }
        bridge_rated_output:               { desc: "bridge_rated_output (to module)",               type: "float",  units: "" }
        bridge_nominal_load:               { desc: "bridge_nominal_load (to module)",               type: "float",  units: "" }
        bridge_filter_zero_balance:        { desc: "bridge_filter_zero_balance (to module)",        type: "float",  units: "" }
        bridge_gravity_of_earth:           { desc: "bridge_gravity_of_earth (to module)",           type: "float",  units: "" }
        bridge_scale_factor:               { desc: "bridge_scale_factor (to module)",               type: "float",  units: "" }
        bridge_reference_load:             { desc: "bridge_reference_load (to module)",             type: "float",  units: "" }

StructType "m1acs_coeff_load_cell_t",
    desc: "m1acs_coefficients of each load cell",
    elements:
        serial_number:         { desc: "serial number of each sensor", type: "uint32", units: "" }
        compression_a0:        { desc: "a0",                           type: "float", units: "" }
        compression_a1:        { desc: "a1*V",                         type: "float", units: "" }
        compression_a2:        { desc: "a2*V*V",                       type: "float", units: "" }
        tension_a0:            { desc: "a0",                           type: "float", units: "" }
        tension_a1:            { desc: "a1*V",                         type: "float", units: "" }
        tension_a2:            { desc: "a2*V*V",                       type: "float", units: "" }
