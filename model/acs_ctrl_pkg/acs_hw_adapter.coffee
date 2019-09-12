
Adapter            'acs_hw_adapter',
    info:          'ACS Hw Adapter'
    desc:          'This component defines the interface with the ACS sensors'
    abstract:      false
    extends:       ['EthercatAdapter']
    uses:          ["ocs_core_fwk", "ocs_io_fwk"]

    # Management attributes:
    instances:     1
    c_factor:      1
    r_factor:      1
    procurement:   "swc"
    phase:         "design"
    resource:      "labor"
    assignee:      "Pierre Kurkdjian, Tomas Krasuski"
    fte_perc:      "100"
    status:        "in progress"
    activity_type: "activity"
    release:       [1]
    stage:         "1"

    input_ports:
        digital_out:             { type: 'digital_out_t',                protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Digital output (values)' }
        analog_out:              { type: 'analog_out_t',                 protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Analog output (values)' }
        resistor_bridge_control: { type: 'resistor_bridge_control_t[7]', protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Resistor bridge control' }

    output_ports:
        digital_in:              { type: 'digital_in_t',                 protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Digital input (values)' }
        analog_in:               { type: 'analog_in_t',                  protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Analog input (values + status)' }
        ssi_in:                  { type: 'ssi_in_t[4]',                  protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'SSI input (values + status)' }
        power_supply:            { type: 'power_supply_t[4]',            protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Power supply state' }
        resistor_bridge_status:  { type: 'resistor_bridge_status_t[7]',  protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Resistor bridge status' }


    data_object_map: [
        { data_object: "digital_in_1_value",           port: "digital_in",         field: "digital_in_1_value" }
        { data_object: "digital_in_2_value",           port: "digital_in",         field: "digital_in_2_value" }

        { data_object: "digital_out_1_value",          port: "digital_out",        field: "digital_out_1_value" }
        { data_object: "digital_out_2_value",          port: "digital_out",        field: "digital_out_2_value" }

        { data_object: "analog_in_1_value",            port: "analog_in",         field: "analog_in_1_value" }
        { data_object: "analog_in_2_value",            port: "analog_in",         field: "analog_in_2_value" }

        { data_object: "analog_out_1_value",           port: "analog_out",        field: "analog_out_1_value" }
        { data_object: "analog_out_2_value",           port: "analog_out",        field: "analog_out_2_value" }

        { data_object: "ssi_in_1_1_data_error",        port: "ssi_in[1]",         field: "ssi_in_1_data_error" }
        { data_object: "ssi_in_1_1_frame_error",       port: "ssi_in[1]",         field: "ssi_in_1_frame_error" }
        { data_object: "ssi_in_1_1_power_error",       port: "ssi_in[1]",         field: "ssi_in_1_power_error" }
        { data_object: "ssi_in_1_1_data_mismatch",     port: "ssi_in[1]",         field: "ssi_in_1_data_mismatch" }
        { data_object: "ssi_in_1_1_sync_error",        port: "ssi_in[1]",         field: "ssi_in_1_sync_error" }
        { data_object: "ssi_in_1_1_value",             port: "ssi_in[1]",         field: "ssi_in_1_value" }
        { data_object: "ssi_in_1_2_data_error",        port: "ssi_in[1]",         field: "ssi_in_2_data_error" }
        { data_object: "ssi_in_1_2_frame_error",       port: "ssi_in[1]",         field: "ssi_in_2_frame_error" }
        { data_object: "ssi_in_1_2_power_error",       port: "ssi_in[1]",         field: "ssi_in_2_power_error" }
        { data_object: "ssi_in_1_2_data_mismatch",     port: "ssi_in[1]",         field: "ssi_in_2_data_mismatch" }
        { data_object: "ssi_in_1_2_sync_error",        port: "ssi_in[1]",         field: "ssi_in_2_sync_error" }
        { data_object: "ssi_in_1_2_value",             port: "ssi_in[1]",         field: "ssi_in_2_value" }

        { data_object: "ssi_in_2_1_data_error",        port: "ssi_in[2]",         field: "ssi_in_1_data_error" }
        { data_object: "ssi_in_2_1_frame_error",       port: "ssi_in[2]",         field: "ssi_in_1_frame_error" }
        { data_object: "ssi_in_2_1_power_error",       port: "ssi_in[2]",         field: "ssi_in_1_power_error" }
        { data_object: "ssi_in_2_1_data_mismatch",     port: "ssi_in[2]",         field: "ssi_in_1_data_mismatch" }
        { data_object: "ssi_in_2_1_sync_error",        port: "ssi_in[2]",         field: "ssi_in_1_sync_error" }
        { data_object: "ssi_in_2_1_value",             port: "ssi_in[2]",         field: "ssi_in_1_value" }
        { data_object: "ssi_in_2_2_data_error",        port: "ssi_in[2]",         field: "ssi_in_2_data_error" }
        { data_object: "ssi_in_2_2_frame_error",       port: "ssi_in[2]",         field: "ssi_in_2_frame_error" }
        { data_object: "ssi_in_2_2_power_error",       port: "ssi_in[2]",         field: "ssi_in_2_power_error" }
        { data_object: "ssi_in_2_2_data_mismatch",     port: "ssi_in[2]",         field: "ssi_in_2_data_mismatch" }
        { data_object: "ssi_in_2_2_sync_error",        port: "ssi_in[2]",         field: "ssi_in_2_sync_error" }
        { data_object: "ssi_in_2_2_value",             port: "ssi_in[2]",         field: "ssi_in_2_value" }

        { data_object: "ssi_in_3_1_data_error",        port: "ssi_in[3]",         field: "ssi_in_1_data_error" }
        { data_object: "ssi_in_3_1_frame_error",       port: "ssi_in[3]",         field: "ssi_in_1_frame_error" }
        { data_object: "ssi_in_3_1_power_error",       port: "ssi_in[3]",         field: "ssi_in_1_power_error" }
        { data_object: "ssi_in_3_1_data_mismatch",     port: "ssi_in[3]",         field: "ssi_in_1_data_mismatch" }
        { data_object: "ssi_in_3_1_sync_error",        port: "ssi_in[3]",         field: "ssi_in_1_sync_error" }
        { data_object: "ssi_in_3_1_value",             port: "ssi_in[3]",         field: "ssi_in_1_value" }
        { data_object: "ssi_in_3_2_data_error",        port: "ssi_in[3]",         field: "ssi_in_2_data_error" }
        { data_object: "ssi_in_3_2_frame_error",       port: "ssi_in[3]",         field: "ssi_in_2_frame_error" }
        { data_object: "ssi_in_3_2_power_error",       port: "ssi_in[3]",         field: "ssi_in_2_power_error" }
        { data_object: "ssi_in_3_2_data_mismatch",     port: "ssi_in[3]",         field: "ssi_in_2_data_mismatch" }
        { data_object: "ssi_in_3_2_sync_error",        port: "ssi_in[3]",         field: "ssi_in_2_sync_error" }
        { data_object: "ssi_in_3_2_value",             port: "ssi_in[3]",         field: "ssi_in_2_value" }

        { data_object: "power_1_on",                   port: "power_supply[1]",         field: "power_on" }
        { data_object: "power_1_overload",             port: "power_supply[1]",         field: "power_overload" }

        { data_object: "power_2_on",                   port: "power_supply[2]",         field: "power_on" }
        { data_object: "power_2_overload",             port: "power_supply[2]",         field: "power_overload" }

        { data_object: "power_3_on",                   port: "power_supply[3]",         field: "power_on" }
        { data_object: "power_3_overload",             port: "power_supply[3]",         field: "power_overload" }

        { data_object: "bridge_1_overrange",           port: "resistor_bridge_status[1]",         field: "bridge_overrange" }
        { data_object: "bridge_1_data_invalid",        port: "resistor_bridge_status[1]",         field: "bridge_data_invalid" }
        { data_object: "bridge_1_error",               port: "resistor_bridge_status[1]",         field: "bridge_error" }
        { data_object: "bridge_1_calibrating",         port: "resistor_bridge_status[1]",         field: "bridge_calibrating" }
        { data_object: "bridge_1_steady_state",        port: "resistor_bridge_status[1]",         field: "bridge_steady_state" }
        { data_object: "bridge_1_sync_error",          port: "resistor_bridge_status[1]",         field: "bridge_sync_error" }
        { data_object: "bridge_1_toggle",              port: "resistor_bridge_status[1]",         field: "bridge_toggle" }
        { data_object: "bridge_1_int_value",           port: "resistor_bridge_status[1]",         field: "bridge_int_value" }

        { data_object: "bridge_1_start_calibration",   port: "resistor_bridge_control[1]",         field: "bridge_start_calibration" }
        { data_object: "bridge_1_disable_calibration", port: "resistor_bridge_control[1]",         field: "bridge_disable_calibration" }
        { data_object: "bridge_1_input_freeze",        port: "resistor_bridge_control[1]",         field: "bridge_input_freeze" }
        { data_object: "bridge_1_sample_mode",         port: "resistor_bridge_control[1]",         field: "bridge_sample_mode" }

        { data_object: "bridge_1_mode0_enable_filter_rx",        port: "resistor_bridge_control[1]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_1_mode1_enable_filter_rx",        port: "resistor_bridge_control[1]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_1_mode0_enable_averager_rx",      port: "resistor_bridge_control[1]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_1_mode1_enable_averager_rx",      port: "resistor_bridge_control[1]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_1_mode0_filter_settings_rx",      port: "resistor_bridge_control[1]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_1_mode1_filter_settings_rx",      port: "resistor_bridge_control[1]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_1_dynamic_filter_change_time_rx", port: "resistor_bridge_control[1]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_1_dynamic_filter_delta_rx",       port: "resistor_bridge_control[1]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_1_filter_settings_rx",            port: "resistor_bridge_control[1]",         field: "bridge_filter_settings" }
        { data_object: "bridge_1_gain_rx",                       port: "resistor_bridge_control[1]",         field: "bridge_gain" }
        { data_object: "bridge_1_tara_rx",                       port: "resistor_bridge_control[1]",         field: "bridge_tara" }
        { data_object: "bridge_1_rated_output_rx",               port: "resistor_bridge_control[1]",         field: "bridge_rated_output" }
        { data_object: "bridge_1_nominal_load_rx",               port: "resistor_bridge_control[1]",         field: "bridge_nominal_load" }
        { data_object: "bridge_1_filter_zero_balance_rx",        port: "resistor_bridge_control[1]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_1_gravity_of_earth_rx",           port: "resistor_bridge_control[1]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_1_scale_factor_rx",               port: "resistor_bridge_control[1]",         field: "bridge_scale_factor" }
        { data_object: "bridge_1_reference_load_rx",             port: "resistor_bridge_control[1]",         field: "bridge_reference_load" }

        { data_object: "bridge_1_mode0_enable_filter_tx",        port: "resistor_bridge_status[1]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_1_mode1_enable_filter_tx",        port: "resistor_bridge_status[1]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_1_mode0_enable_averager_tx",      port: "resistor_bridge_status[1]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_1_mode1_enable_averager_tx",      port: "resistor_bridge_status[1]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_1_mode0_filter_settings_tx",      port: "resistor_bridge_status[1]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_1_mode1_filter_settings_tx",      port: "resistor_bridge_status[1]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_1_dynamic_filter_change_time_tx", port: "resistor_bridge_status[1]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_1_dynamic_filter_delta_tx",       port: "resistor_bridge_status[1]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_1_filter_settings_tx",            port: "resistor_bridge_status[1]",         field: "bridge_filter_settings" }
        { data_object: "bridge_1_gain_tx",                       port: "resistor_bridge_status[1]",         field: "bridge_gain" }
        { data_object: "bridge_1_tara_tx",                       port: "resistor_bridge_status[1]",         field: "bridge_tara" }
        { data_object: "bridge_1_rated_output_tx",               port: "resistor_bridge_status[1]",         field: "bridge_rated_output" }
        { data_object: "bridge_1_nominal_load_tx",               port: "resistor_bridge_status[1]",         field: "bridge_nominal_load" }
        { data_object: "bridge_1_filter_zero_balance_tx",        port: "resistor_bridge_status[1]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_1_gravity_of_earth_tx",           port: "resistor_bridge_status[1]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_1_scale_factor_tx",               port: "resistor_bridge_status[1]",         field: "bridge_scale_factor" }
        { data_object: "bridge_1_reference_load_tx",             port: "resistor_bridge_status[1]",         field: "bridge_reference_load" }

        { data_object: "bridge_2_overrange",           port: "resistor_bridge_status[2]",         field: "bridge_overrange" }
        { data_object: "bridge_2_data_invalid",        port: "resistor_bridge_status[2]",         field: "bridge_data_invalid" }
        { data_object: "bridge_2_error",               port: "resistor_bridge_status[2]",         field: "bridge_error" }
        { data_object: "bridge_2_calibrating",         port: "resistor_bridge_status[2]",         field: "bridge_calibrating" }
        { data_object: "bridge_2_steady_state",        port: "resistor_bridge_status[2]",         field: "bridge_steady_state" }
        { data_object: "bridge_2_sync_error",          port: "resistor_bridge_status[2]",         field: "bridge_sync_error" }
        { data_object: "bridge_2_toggle",              port: "resistor_bridge_status[2]",         field: "bridge_toggle" }
        { data_object: "bridge_2_int_value",           port: "resistor_bridge_status[2]",          field: "bridge_int_value" }

        { data_object: "bridge_2_start_calibration",   port: "resistor_bridge_control[2]",        field: "bridge_start_calibration" }
        { data_object: "bridge_2_disable_calibration", port: "resistor_bridge_control[2]",        field: "bridge_disable_calibration" }
        { data_object: "bridge_2_input_freeze",        port: "resistor_bridge_control[2]",        field: "bridge_input_freeze" }
        { data_object: "bridge_2_sample_mode",         port: "resistor_bridge_control[2]",        field: "bridge_sample_mode" }

        { data_object: "bridge_2_mode0_enable_filter_rx",        port: "resistor_bridge_control[2]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_2_mode1_enable_filter_rx",        port: "resistor_bridge_control[2]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_2_mode0_enable_averager_rx",      port: "resistor_bridge_control[2]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_2_mode1_enable_averager_rx",      port: "resistor_bridge_control[2]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_2_mode0_filter_settings_rx",      port: "resistor_bridge_control[2]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_2_mode1_filter_settings_rx",      port: "resistor_bridge_control[2]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_2_dynamic_filter_change_time_rx", port: "resistor_bridge_control[2]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_2_dynamic_filter_delta_rx",       port: "resistor_bridge_control[2]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_2_filter_settings_rx",            port: "resistor_bridge_control[2]",         field: "bridge_filter_settings" }
        { data_object: "bridge_2_gain_rx",                       port: "resistor_bridge_control[2]",         field: "bridge_gain" }
        { data_object: "bridge_2_tara_rx",                       port: "resistor_bridge_control[2]",         field: "bridge_tara" }
        { data_object: "bridge_2_rated_output_rx",               port: "resistor_bridge_control[2]",         field: "bridge_rated_output" }
        { data_object: "bridge_2_nominal_load_rx",               port: "resistor_bridge_control[2]",         field: "bridge_nominal_load" }
        { data_object: "bridge_2_filter_zero_balance_rx",        port: "resistor_bridge_control[2]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_2_gravity_of_earth_rx",           port: "resistor_bridge_control[2]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_2_scale_factor_rx",               port: "resistor_bridge_control[2]",         field: "bridge_scale_factor" }
        { data_object: "bridge_2_reference_load_rx",             port: "resistor_bridge_control[2]",         field: "bridge_reference_load" }

        { data_object: "bridge_2_mode0_enable_filter_tx",        port: "resistor_bridge_status[2]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_2_mode1_enable_filter_tx",        port: "resistor_bridge_status[2]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_2_mode0_enable_averager_tx",      port: "resistor_bridge_status[2]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_2_mode1_enable_averager_tx",      port: "resistor_bridge_status[2]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_2_mode0_filter_settings_tx",      port: "resistor_bridge_status[2]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_2_mode1_filter_settings_tx",      port: "resistor_bridge_status[2]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_2_dynamic_filter_change_time_tx", port: "resistor_bridge_status[2]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_2_dynamic_filter_delta_tx",       port: "resistor_bridge_status[2]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_2_filter_settings_tx",            port: "resistor_bridge_status[2]",         field: "bridge_filter_settings" }
        { data_object: "bridge_2_gain_tx",                       port: "resistor_bridge_status[2]",         field: "bridge_gain" }
        { data_object: "bridge_2_tara_tx",                       port: "resistor_bridge_status[2]",         field: "bridge_tara" }
        { data_object: "bridge_2_rated_output_tx",               port: "resistor_bridge_status[2]",         field: "bridge_rated_output" }
        { data_object: "bridge_2_nominal_load_tx",               port: "resistor_bridge_status[2]",         field: "bridge_nominal_load" }
        { data_object: "bridge_2_filter_zero_balance_tx",        port: "resistor_bridge_status[2]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_2_gravity_of_earth_tx",           port: "resistor_bridge_status[2]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_2_scale_factor_tx",               port: "resistor_bridge_status[2]",         field: "bridge_scale_factor" }
        { data_object: "bridge_2_reference_load_tx",             port: "resistor_bridge_status[2]",         field: "bridge_reference_load" }

        { data_object: "bridge_3_overrange",           port: "resistor_bridge_status[3]",         field: "bridge_overrange" }
        { data_object: "bridge_3_data_invalid",        port: "resistor_bridge_status[3]",         field: "bridge_data_invalid" }
        { data_object: "bridge_3_error",               port: "resistor_bridge_status[3]",         field: "bridge_error" }
        { data_object: "bridge_3_calibrating",         port: "resistor_bridge_status[3]",         field: "bridge_calibrating" }
        { data_object: "bridge_3_steady_state",        port: "resistor_bridge_status[3]",         field: "bridge_steady_state" }
        { data_object: "bridge_3_sync_error",          port: "resistor_bridge_status[3]",         field: "bridge_sync_error" }
        { data_object: "bridge_3_toggle",              port: "resistor_bridge_status[3]",         field: "bridge_toggle" }
        { data_object: "bridge_3_int_value",           port: "resistor_bridge_status[3]",          field: "bridge_int_value" }

        { data_object: "bridge_3_start_calibration",   port: "resistor_bridge_control[3]",        field: "bridge_start_calibration" }
        { data_object: "bridge_3_disable_calibration", port: "resistor_bridge_control[3]",        field: "bridge_disable_calibration" }
        { data_object: "bridge_3_input_freeze",        port: "resistor_bridge_control[3]",        field: "bridge_input_freeze" }
        { data_object: "bridge_3_sample_mode",         port: "resistor_bridge_control[3]",        field: "bridge_sample_mode" }

        { data_object: "bridge_3_mode0_enable_filter_rx",        port: "resistor_bridge_control[3]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_3_mode1_enable_filter_rx",        port: "resistor_bridge_control[3]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_3_mode0_enable_averager_rx",      port: "resistor_bridge_control[3]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_3_mode1_enable_averager_rx",      port: "resistor_bridge_control[3]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_3_mode0_filter_settings_rx",      port: "resistor_bridge_control[3]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_3_mode1_filter_settings_rx",      port: "resistor_bridge_control[3]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_3_dynamic_filter_change_time_rx", port: "resistor_bridge_control[3]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_3_dynamic_filter_delta_rx",       port: "resistor_bridge_control[3]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_3_filter_settings_rx",            port: "resistor_bridge_control[3]",         field: "bridge_filter_settings" }
        { data_object: "bridge_3_gain_rx",                       port: "resistor_bridge_control[3]",         field: "bridge_gain" }
        { data_object: "bridge_3_tara_rx",                       port: "resistor_bridge_control[3]",         field: "bridge_tara" }
        { data_object: "bridge_3_rated_output_rx",               port: "resistor_bridge_control[3]",         field: "bridge_rated_output" }
        { data_object: "bridge_3_nominal_load_rx",               port: "resistor_bridge_control[3]",         field: "bridge_nominal_load" }
        { data_object: "bridge_3_filter_zero_balance_rx",        port: "resistor_bridge_control[3]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_3_gravity_of_earth_rx",           port: "resistor_bridge_control[3]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_3_scale_factor_rx",               port: "resistor_bridge_control[3]",         field: "bridge_scale_factor" }
        { data_object: "bridge_3_reference_load_rx",             port: "resistor_bridge_control[3]",         field: "bridge_reference_load" }

        { data_object: "bridge_3_mode0_enable_filter_tx",        port: "resistor_bridge_status[3]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_3_mode1_enable_filter_tx",        port: "resistor_bridge_status[3]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_3_mode0_enable_averager_tx",      port: "resistor_bridge_status[3]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_3_mode1_enable_averager_tx",      port: "resistor_bridge_status[3]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_3_mode0_filter_settings_tx",      port: "resistor_bridge_status[3]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_3_mode1_filter_settings_tx",      port: "resistor_bridge_status[3]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_3_dynamic_filter_change_time_tx", port: "resistor_bridge_status[3]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_3_dynamic_filter_delta_tx",       port: "resistor_bridge_status[3]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_3_filter_settings_tx",            port: "resistor_bridge_status[3]",         field: "bridge_filter_settings" }
        { data_object: "bridge_3_gain_tx",                       port: "resistor_bridge_status[3]",         field: "bridge_gain" }
        { data_object: "bridge_3_tara_tx",                       port: "resistor_bridge_status[3]",         field: "bridge_tara" }
        { data_object: "bridge_3_rated_output_tx",               port: "resistor_bridge_status[3]",         field: "bridge_rated_output" }
        { data_object: "bridge_3_nominal_load_tx",               port: "resistor_bridge_status[3]",         field: "bridge_nominal_load" }
        { data_object: "bridge_3_filter_zero_balance_tx",        port: "resistor_bridge_status[3]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_3_gravity_of_earth_tx",           port: "resistor_bridge_status[3]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_3_scale_factor_tx",               port: "resistor_bridge_status[3]",         field: "bridge_scale_factor" }
        { data_object: "bridge_3_reference_load_tx",             port: "resistor_bridge_status[3]",         field: "bridge_reference_load" }

        { data_object: "bridge_4_overrange",           port: "resistor_bridge_status[4]",         field: "bridge_overrange" }
        { data_object: "bridge_4_data_invalid",        port: "resistor_bridge_status[4]",         field: "bridge_data_invalid" }
        { data_object: "bridge_4_error",               port: "resistor_bridge_status[4]",         field: "bridge_error" }
        { data_object: "bridge_4_calibrating",         port: "resistor_bridge_status[4]",         field: "bridge_calibrating" }
        { data_object: "bridge_4_steady_state",        port: "resistor_bridge_status[4]",         field: "bridge_steady_state" }
        { data_object: "bridge_4_sync_error",          port: "resistor_bridge_status[4]",         field: "bridge_sync_error" }
        { data_object: "bridge_4_toggle",              port: "resistor_bridge_status[4]",         field: "bridge_toggle" }
        { data_object: "bridge_4_int_value",           port: "resistor_bridge_status[4]",          field: "bridge_int_value" }

        { data_object: "bridge_4_start_calibration",   port: "resistor_bridge_control[4]",        field: "bridge_start_calibration" }
        { data_object: "bridge_4_disable_calibration", port: "resistor_bridge_control[4]",        field: "bridge_disable_calibration" }
        { data_object: "bridge_4_input_freeze",        port: "resistor_bridge_control[4]",        field: "bridge_input_freeze" }
        { data_object: "bridge_4_sample_mode",         port: "resistor_bridge_control[4]",        field: "bridge_sample_mode" }

        { data_object: "bridge_4_mode0_enable_filter_rx",        port: "resistor_bridge_control[4]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_4_mode1_enable_filter_rx",        port: "resistor_bridge_control[4]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_4_mode0_enable_averager_rx",      port: "resistor_bridge_control[4]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_4_mode1_enable_averager_rx",      port: "resistor_bridge_control[4]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_4_mode0_filter_settings_rx",      port: "resistor_bridge_control[4]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_4_mode1_filter_settings_rx",      port: "resistor_bridge_control[4]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_4_dynamic_filter_change_time_rx", port: "resistor_bridge_control[4]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_4_dynamic_filter_delta_rx",       port: "resistor_bridge_control[4]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_4_filter_settings_rx",            port: "resistor_bridge_control[4]",         field: "bridge_filter_settings" }
        { data_object: "bridge_4_gain_rx",                       port: "resistor_bridge_control[4]",         field: "bridge_gain" }
        { data_object: "bridge_4_tara_rx",                       port: "resistor_bridge_control[4]",         field: "bridge_tara" }
        { data_object: "bridge_4_rated_output_rx",               port: "resistor_bridge_control[4]",         field: "bridge_rated_output" }
        { data_object: "bridge_4_nominal_load_rx",               port: "resistor_bridge_control[4]",         field: "bridge_nominal_load" }
        { data_object: "bridge_4_filter_zero_balance_rx",        port: "resistor_bridge_control[4]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_4_gravity_of_earth_rx",           port: "resistor_bridge_control[4]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_4_scale_factor_rx",               port: "resistor_bridge_control[4]",         field: "bridge_scale_factor" }
        { data_object: "bridge_4_reference_load_rx",             port: "resistor_bridge_control[4]",         field: "bridge_reference_load" }

        { data_object: "bridge_4_mode0_enable_filter_tx",        port: "resistor_bridge_status[4]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_4_mode1_enable_filter_tx",        port: "resistor_bridge_status[4]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_4_mode0_enable_averager_tx",      port: "resistor_bridge_status[4]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_4_mode1_enable_averager_tx",      port: "resistor_bridge_status[4]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_4_mode0_filter_settings_tx",      port: "resistor_bridge_status[4]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_4_mode1_filter_settings_tx",      port: "resistor_bridge_status[4]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_4_dynamic_filter_change_time_tx", port: "resistor_bridge_status[4]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_4_dynamic_filter_delta_tx",       port: "resistor_bridge_status[4]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_4_filter_settings_tx",            port: "resistor_bridge_status[4]",         field: "bridge_filter_settings" }
        { data_object: "bridge_4_gain_tx",                       port: "resistor_bridge_status[4]",         field: "bridge_gain" }
        { data_object: "bridge_4_tara_tx",                       port: "resistor_bridge_status[4]",         field: "bridge_tara" }
        { data_object: "bridge_4_rated_output_tx",               port: "resistor_bridge_status[4]",         field: "bridge_rated_output" }
        { data_object: "bridge_4_nominal_load_tx",               port: "resistor_bridge_status[4]",         field: "bridge_nominal_load" }
        { data_object: "bridge_4_filter_zero_balance_tx",        port: "resistor_bridge_status[4]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_4_gravity_of_earth_tx",           port: "resistor_bridge_status[4]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_4_scale_factor_tx",               port: "resistor_bridge_status[4]",         field: "bridge_scale_factor" }
        { data_object: "bridge_4_reference_load_tx",             port: "resistor_bridge_status[4]",         field: "bridge_reference_load" }

        { data_object: "bridge_5_overrange",           port: "resistor_bridge_status[5]",         field: "bridge_overrange" }
        { data_object: "bridge_5_data_invalid",        port: "resistor_bridge_status[5]",         field: "bridge_data_invalid" }
        { data_object: "bridge_5_error",               port: "resistor_bridge_status[5]",         field: "bridge_error" }
        { data_object: "bridge_5_calibrating",         port: "resistor_bridge_status[5]",         field: "bridge_calibrating" }
        { data_object: "bridge_5_steady_state",        port: "resistor_bridge_status[5]",         field: "bridge_steady_state" }
        { data_object: "bridge_5_sync_error",          port: "resistor_bridge_status[5]",         field: "bridge_sync_error" }
        { data_object: "bridge_5_toggle",              port: "resistor_bridge_status[5]",         field: "bridge_toggle" }
        { data_object: "bridge_5_int_value",           port: "resistor_bridge_status[5]",          field: "bridge_int_value" }

        { data_object: "bridge_5_start_calibration",   port: "resistor_bridge_control[5]",        field: "bridge_start_calibration" }
        { data_object: "bridge_5_disable_calibration", port: "resistor_bridge_control[5]",        field: "bridge_disable_calibration" }
        { data_object: "bridge_5_input_freeze",        port: "resistor_bridge_control[5]",        field: "bridge_input_freeze" }
        { data_object: "bridge_5_sample_mode",         port: "resistor_bridge_control[5]",        field: "bridge_sample_mode" }

        { data_object: "bridge_5_mode0_enable_filter_rx",        port: "resistor_bridge_control[5]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_5_mode1_enable_filter_rx",        port: "resistor_bridge_control[5]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_5_mode0_enable_averager_rx",      port: "resistor_bridge_control[5]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_5_mode1_enable_averager_rx",      port: "resistor_bridge_control[5]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_5_mode0_filter_settings_rx",      port: "resistor_bridge_control[5]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_5_mode1_filter_settings_rx",      port: "resistor_bridge_control[5]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_5_dynamic_filter_change_time_rx", port: "resistor_bridge_control[5]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_5_dynamic_filter_delta_rx",       port: "resistor_bridge_control[5]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_5_filter_settings_rx",            port: "resistor_bridge_control[5]",         field: "bridge_filter_settings" }
        { data_object: "bridge_5_gain_rx",                       port: "resistor_bridge_control[5]",         field: "bridge_gain" }
        { data_object: "bridge_5_tara_rx",                       port: "resistor_bridge_control[5]",         field: "bridge_tara" }
        { data_object: "bridge_5_rated_output_rx",               port: "resistor_bridge_control[5]",         field: "bridge_rated_output" }
        { data_object: "bridge_5_nominal_load_rx",               port: "resistor_bridge_control[5]",         field: "bridge_nominal_load" }
        { data_object: "bridge_5_filter_zero_balance_rx",        port: "resistor_bridge_control[5]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_5_gravity_of_earth_rx",           port: "resistor_bridge_control[5]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_5_scale_factor_rx",               port: "resistor_bridge_control[5]",         field: "bridge_scale_factor" }
        { data_object: "bridge_5_reference_load_rx",             port: "resistor_bridge_control[5]",         field: "bridge_reference_load" }

        { data_object: "bridge_5_mode0_enable_filter_tx",        port: "resistor_bridge_status[5]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_5_mode1_enable_filter_tx",        port: "resistor_bridge_status[5]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_5_mode0_enable_averager_tx",      port: "resistor_bridge_status[5]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_5_mode1_enable_averager_tx",      port: "resistor_bridge_status[5]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_5_mode0_filter_settings_tx",      port: "resistor_bridge_status[5]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_5_mode1_filter_settings_tx",      port: "resistor_bridge_status[5]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_5_dynamic_filter_change_time_tx", port: "resistor_bridge_status[5]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_5_dynamic_filter_delta_tx",       port: "resistor_bridge_status[5]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_5_filter_settings_tx",            port: "resistor_bridge_status[5]",         field: "bridge_filter_settings" }
        { data_object: "bridge_5_gain_tx",                       port: "resistor_bridge_status[5]",         field: "bridge_gain" }
        { data_object: "bridge_5_tara_tx",                       port: "resistor_bridge_status[5]",         field: "bridge_tara" }
        { data_object: "bridge_5_rated_output_tx",               port: "resistor_bridge_status[5]",         field: "bridge_rated_output" }
        { data_object: "bridge_5_nominal_load_tx",               port: "resistor_bridge_status[5]",         field: "bridge_nominal_load" }
        { data_object: "bridge_5_filter_zero_balance_tx",        port: "resistor_bridge_status[5]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_5_gravity_of_earth_tx",           port: "resistor_bridge_status[5]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_5_scale_factor_tx",               port: "resistor_bridge_status[5]",         field: "bridge_scale_factor" }
        { data_object: "bridge_5_reference_load_tx",             port: "resistor_bridge_status[5]",         field: "bridge_reference_load" }

        { data_object: "bridge_6_overrange",           port: "resistor_bridge_status[6]",         field: "bridge_overrange" }
        { data_object: "bridge_6_data_invalid",        port: "resistor_bridge_status[6]",         field: "bridge_data_invalid" }
        { data_object: "bridge_6_error",               port: "resistor_bridge_status[6]",         field: "bridge_error" }
        { data_object: "bridge_6_calibrating",         port: "resistor_bridge_status[6]",         field: "bridge_calibrating" }
        { data_object: "bridge_6_steady_state",        port: "resistor_bridge_status[6]",         field: "bridge_steady_state" }
        { data_object: "bridge_6_sync_error",          port: "resistor_bridge_status[6]",         field: "bridge_sync_error" }
        { data_object: "bridge_6_toggle",              port: "resistor_bridge_status[6]",         field: "bridge_toggle" }

        { data_object: "bridge_6_int_value",           port: "resistor_bridge_status[6]",         field: "bridge_int_value" }
        { data_object: "bridge_6_start_calibration",   port: "resistor_bridge_control[6]",        field: "bridge_start_calibration" }
        { data_object: "bridge_6_disable_calibration", port: "resistor_bridge_control[6]",        field: "bridge_disable_calibration" }
        { data_object: "bridge_6_input_freeze",        port: "resistor_bridge_control[6]",        field: "bridge_input_freeze" }
        { data_object: "bridge_6_sample_mode",         port: "resistor_bridge_control[6]",        field: "bridge_sample_mode" }

        { data_object: "bridge_6_mode0_enable_filter_rx",        port: "resistor_bridge_control[6]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_6_mode1_enable_filter_rx",        port: "resistor_bridge_control[6]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_6_mode0_enable_averager_rx",      port: "resistor_bridge_control[6]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_6_mode1_enable_averager_rx",      port: "resistor_bridge_control[6]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_6_mode0_filter_settings_rx",      port: "resistor_bridge_control[6]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_6_mode1_filter_settings_rx",      port: "resistor_bridge_control[6]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_6_dynamic_filter_change_time_rx", port: "resistor_bridge_control[6]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_6_dynamic_filter_delta_rx",       port: "resistor_bridge_control[6]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_6_filter_settings_rx",            port: "resistor_bridge_control[6]",         field: "bridge_filter_settings" }
        { data_object: "bridge_6_gain_rx",                       port: "resistor_bridge_control[6]",         field: "bridge_gain" }
        { data_object: "bridge_6_tara_rx",                       port: "resistor_bridge_control[6]",         field: "bridge_tara" }
        { data_object: "bridge_6_rated_output_rx",               port: "resistor_bridge_control[6]",         field: "bridge_rated_output" }
        { data_object: "bridge_6_nominal_load_rx",               port: "resistor_bridge_control[6]",         field: "bridge_nominal_load" }
        { data_object: "bridge_6_filter_zero_balance_rx",        port: "resistor_bridge_control[6]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_6_gravity_of_earth_rx",           port: "resistor_bridge_control[6]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_6_scale_factor_rx",               port: "resistor_bridge_control[6]",         field: "bridge_scale_factor" }
        { data_object: "bridge_6_reference_load_rx",             port: "resistor_bridge_control[6]",         field: "bridge_reference_load" }

        { data_object: "bridge_6_mode0_enable_filter_tx",        port: "resistor_bridge_status[6]",         field: "bridge_mode0_enable_filter" }
        { data_object: "bridge_6_mode1_enable_filter_tx",        port: "resistor_bridge_status[6]",         field: "bridge_mode1_enable_filter" }
        { data_object: "bridge_6_mode0_enable_averager_tx",      port: "resistor_bridge_status[6]",         field: "bridge_mode0_enable_averager" }
        { data_object: "bridge_6_mode1_enable_averager_tx",      port: "resistor_bridge_status[6]",         field: "bridge_mode1_enable_averager" }
        { data_object: "bridge_6_mode0_filter_settings_tx",      port: "resistor_bridge_status[6]",         field: "bridge_mode0_filter_settings" }
        { data_object: "bridge_6_mode1_filter_settings_tx",      port: "resistor_bridge_status[6]",         field: "bridge_mode1_filter_settings" }
        { data_object: "bridge_6_dynamic_filter_change_time_tx", port: "resistor_bridge_status[6]",         field: "bridge_dynamic_filter_change_time" }
        { data_object: "bridge_6_dynamic_filter_delta_tx",       port: "resistor_bridge_status[6]",         field: "bridge_dynamic_filter_delta" }
        { data_object: "bridge_6_filter_settings_tx",            port: "resistor_bridge_status[6]",         field: "bridge_filter_settings" }
        { data_object: "bridge_6_gain_tx",                       port: "resistor_bridge_status[6]",         field: "bridge_gain" }
        { data_object: "bridge_6_tara_tx",                       port: "resistor_bridge_status[6]",         field: "bridge_tara" }
        { data_object: "bridge_6_rated_output_tx",               port: "resistor_bridge_status[6]",         field: "bridge_rated_output" }
        { data_object: "bridge_6_nominal_load_tx",               port: "resistor_bridge_status[6]",         field: "bridge_nominal_load" }
        { data_object: "bridge_6_filter_zero_balance_tx",        port: "resistor_bridge_status[6]",         field: "bridge_filter_zero_balance" }
        { data_object: "bridge_6_gravity_of_earth_tx",           port: "resistor_bridge_status[6]",         field: "bridge_gravity_of_earth" }
        { data_object: "bridge_6_scale_factor_tx",               port: "resistor_bridge_status[6]",         field: "bridge_scale_factor" }
        { data_object: "bridge_6_reference_load_tx",             port: "resistor_bridge_status[6]",         field: "bridge_reference_load" }
    ]

    properties:
        uri:       {default: "gmt://127.0.0.1/acs_dcs"}
        name:      {default: "acs_hw_adapter"}
        host:      {default: "127.0.0.1"}
        port:      {default: 9010}
        scan_rate: {default: 100}

    instance_configurations: ['acs_hw1_adapter']
