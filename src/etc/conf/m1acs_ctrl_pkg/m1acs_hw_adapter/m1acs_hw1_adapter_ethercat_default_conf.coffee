module.exports =
    master: [
            { id: 0, rate: 1000 }
        ]

    domains: [
        { id: 0, master: 0,   rate_factor: 1    }
    ]

    modules: [
        { name: "coupler",           position: 0,  type: "EK1100" }

        { name: "digital_in",        position: 1,  type: "EL1809" }  # sensor
        { name: "digital_out",       position: 2,  type: "EL2008" }  # actuator

        { name: "analog_in",         position: 3,  type: "EL3124" }  # sensor
        { name: "analog_out",        position: 4,  type: "EL4122" }  # actuator

        { name: "ssi_encoder_1",     position: 5,  type: "EL5002" }  # sensor
        { name: "ssi_encoder_2",     position: 6,  type: "EL5002" }  # sensor
        { name: "ssi_encoder_3",     position: 7,  type: "EL5002" }  # sensor

        { name: "power_supply_1",    position: 8,  type: "EL9510" }
        { name: "resistor_bridge_1", position: 9,  type: "EL3356-10" } #sensor
        { name: "resistor_bridge_2", position: 10, type: "EL3356-10" } #sensor

        { name: "power_supply_2",    position: 11, type: "EL9510" }
        { name: "resistor_bridge_3", position: 12, type: "EL3356-10" } #sensor
        { name: "resistor_bridge_4", position: 13, type: "EL3356-10" } #sensor

        { name: "power_supply_3",    position: 14, type: "EL9510" }
        { name: "resistor_bridge_5", position: 15, type: "EL3356-10" } #sensor
        { name: "resistor_bridge_6", position: 16, type: "EL3356-10" } #sensor
    ]

    data_objects: [

        # 8-channel Digital communication
        { name: "digital_in_1_value",        type: "tx_pdo",  label: "digital_in_1_value",        std_name: "digital_in_1_value",        module: 1,  domain: 0 }
        { name: "digital_in_2_value",        type: "tx_pdo",  label: "digital_in_2_value",        std_name: "digital_in_2_value",        module: 1,  domain: 0 }
        { name: "digital_in_3_value",        type: "tx_pdo",  label: "digital_in_3_value",        std_name: "digital_in_3_value",        module: 1,  domain: 0 }
        { name: "digital_in_4_value",        type: "tx_pdo",  label: "digital_in_4_value",        std_name: "digital_in_4_value",        module: 1,  domain: 0 }
        { name: "digital_in_5_value",        type: "tx_pdo",  label: "digital_in_5_value",        std_name: "digital_in_5_value",        module: 1,  domain: 0 }
        { name: "digital_in_6_value",        type: "tx_pdo",  label: "digital_in_6_value",        std_name: "digital_in_6_value",        module: 1,  domain: 0 }
        { name: "digital_in_7_value",        type: "tx_pdo",  label: "digital_in_7_value",        std_name: "digital_in_7_value",        module: 1,  domain: 0 }
        { name: "digital_in_8_value",        type: "tx_pdo",  label: "digital_in_8_value",        std_name: "digital_in_8_value",        module: 1,  domain: 0 }

        { name: "digital_in_9_value",        type: "tx_pdo",  label: "digital_in_9_value",        std_name: "digital_in_9_value",        module: 1,  domain: 0 }
        { name: "digital_in_10_value",        type: "tx_pdo",  label: "digital_in_10_value",        std_name: "digital_in_10_value",        module: 1,  domain: 0 }
        { name: "digital_in_11_value",        type: "tx_pdo",  label: "digital_in_11_value",        std_name: "digital_in_11_value",        module: 1,  domain: 0 }
        { name: "digital_in_12_value",        type: "tx_pdo",  label: "digital_in_12_value",        std_name: "digital_in_12_value",        module: 1,  domain: 0 }
        { name: "digital_in_13_value",        type: "tx_pdo",  label: "digital_in_13_value",        std_name: "digital_in_13_value",        module: 1,  domain: 0 }
        { name: "digital_in_14_value",        type: "tx_pdo",  label: "digital_in_14_value",        std_name: "digital_in_14_value",        module: 1,  domain: 0 }
        { name: "digital_in_15_value",        type: "tx_pdo",  label: "digital_in_15_value",        std_name: "digital_in_15_value",        module: 1,  domain: 0 }
        { name: "digital_in_16_value",        type: "tx_pdo",  label: "digital_in_16_value",        std_name: "digital_in_16_value",        module: 1,  domain: 0 }

        { name: "digital_out_1_value",       type: "rx_pdo",  label: "digital_out_1_value",       std_name: "digital_out_1_value",       module: 2,  domain: 0 }
        { name: "digital_out_2_value",       type: "rx_pdo",  label: "digital_out_2_value",       std_name: "digital_out_2_value",       module: 2,  domain: 0 }
        { name: "digital_out_3_value",       type: "rx_pdo",  label: "digital_out_3_value",       std_name: "digital_out_3_value",       module: 2,  domain: 0 }
        { name: "digital_out_4_value",       type: "rx_pdo",  label: "digital_out_4_value",       std_name: "digital_out_4_value",       module: 2,  domain: 0 }
        { name: "digital_out_5_value",       type: "rx_pdo",  label: "digital_out_5_value",       std_name: "digital_out_5_value",       module: 2,  domain: 0 }
        { name: "digital_out_6_value",       type: "rx_pdo",  label: "digital_out_6_value",       std_name: "digital_out_6_value",       module: 2,  domain: 0 }
        { name: "digital_out_7_value",       type: "rx_pdo",  label: "digital_out_7_value",       std_name: "digital_out_7_value",       module: 2,  domain: 0 }
        { name: "digital_out_8_value",       type: "rx_pdo",  label: "digital_out_8_value",       std_name: "digital_out_8_value",       module: 2,  domain: 0 }

        # 2-channel Analog communication
        { name: "analog_in_1_value",         type: "tx_pdo",  label: "analog_in_1_value",         std_name: "analog_in_1_value",         module: 3,  domain: 0 }
        { name: "analog_in_2_value",         type: "tx_pdo",  label: "analog_in_2_value",         std_name: "analog_in_2_value",         module: 3,  domain: 0 }
        { name: "analog_out_1_value",        type: "rx_pdo",  label: "analog_out_1_value",        std_name: "analog_out_1_value",        module: 4,  domain: 0 }
        { name: "analog_out_2_value",        type: "rx_pdo",  label: "analog_out_2_value",        std_name: "analog_out_2_value",        module: 4,  domain: 0 }

        { name: "ssi_in_1_1_data_error",     type: "tx_pdo",  label: "ssi_in_1_1_data_error",     std_name: "ssi_in_1_data_error",       module: 5,  domain: 0 }
        { name: "ssi_in_1_1_frame_error",    type: "tx_pdo",  label: "ssi_in_1_1_frame_error",    std_name: "ssi_in_1_frame_error",      module: 5,  domain: 0 }
        { name: "ssi_in_1_1_power_error",    type: "tx_pdo",  label: "ssi_in_1_1_power_error",    std_name: "ssi_in_1_power_error",      module: 5,  domain: 0 }
        { name: "ssi_in_1_1_data_mismatch",  type: "tx_pdo",  label: "ssi_in_1_1_data_mismatch",  std_name: "ssi_in_1_data_mismatch",    module: 5,  domain: 0 }
        { name: "ssi_in_1_1_sync_error",     type: "tx_pdo",  label: "ssi_in_1_1_sync_error",     std_name: "ssi_in_1_sync_error",       module: 5,  domain: 0 }
        { name: "ssi_in_1_1_value",          type: "tx_pdo",  label: "ssi_in_1_1_value",          std_name: "ssi_in_1_value",            module: 5,  domain: 0 }
        { name: "ssi_in_1_2_data_error",     type: "tx_pdo",  label: "ssi_in_1_2_data_error",     std_name: "ssi_in_2_data_error",       module: 5,  domain: 0 }
        { name: "ssi_in_1_2_frame_error",    type: "tx_pdo",  label: "ssi_in_1_2_frame_error",    std_name: "ssi_in_2_frame_error",      module: 5,  domain: 0 }
        { name: "ssi_in_1_2_power_error",    type: "tx_pdo",  label: "ssi_in_1_2_power_error",    std_name: "ssi_in_2_power_error",      module: 5,  domain: 0 }
        { name: "ssi_in_1_2_data_mismatch",  type: "tx_pdo",  label: "ssi_in_1_2_data_mismatch",  std_name: "ssi_in_2_data_mismatch",    module: 5,  domain: 0 }
        { name: "ssi_in_1_2_sync_error",     type: "tx_pdo",  label: "ssi_in_1_2_sync_error",     std_name: "ssi_in_2_sync_error",       module: 5,  domain: 0 }
        { name: "ssi_in_1_2_value",          type: "tx_pdo",  label: "ssi_in_1_2_value",          std_name: "ssi_in_2_value",            module: 5,  domain: 0 }

        { name: "ssi_in_2_1_data_error",     type: "tx_pdo",  label: "ssi_in_2_1_data_error",     std_name: "ssi_in_1_data_error",       module: 6,  domain: 0 }
        { name: "ssi_in_2_1_frame_error",    type: "tx_pdo",  label: "ssi_in_2_1_frame_error",    std_name: "ssi_in_1_frame_error",      module: 6,  domain: 0 }
        { name: "ssi_in_2_1_power_error",    type: "tx_pdo",  label: "ssi_in_2_1_power_error",    std_name: "ssi_in_1_power_error",      module: 6,  domain: 0 }
        { name: "ssi_in_2_1_data_mismatch",  type: "tx_pdo",  label: "ssi_in_2_1_data_mismatch",  std_name: "ssi_in_1_data_mismatch",    module: 6,  domain: 0 }
        { name: "ssi_in_2_1_sync_error",     type: "tx_pdo",  label: "ssi_in_2_1_sync_error",     std_name: "ssi_in_1_sync_error",       module: 6,  domain: 0 }
        { name: "ssi_in_2_1_value",          type: "tx_pdo",  label: "ssi_in_2_1_value",          std_name: "ssi_in_1_value",            module: 6,  domain: 0 }
        { name: "ssi_in_2_2_data_error",     type: "tx_pdo",  label: "ssi_in_2_2_data_error",     std_name: "ssi_in_2_data_error",       module: 6,  domain: 0 }
        { name: "ssi_in_2_2_frame_error",    type: "tx_pdo",  label: "ssi_in_2_2_frame_error",    std_name: "ssi_in_2_frame_error",      module: 6,  domain: 0 }
        { name: "ssi_in_2_2_power_error",    type: "tx_pdo",  label: "ssi_in_2_2_power_error",    std_name: "ssi_in_2_power_error",      module: 6,  domain: 0 }
        { name: "ssi_in_2_2_data_mismatch",  type: "tx_pdo",  label: "ssi_in_2_2_data_mismatch",  std_name: "ssi_in_2_data_mismatch",    module: 6,  domain: 0 }
        { name: "ssi_in_2_2_sync_error",     type: "tx_pdo",  label: "ssi_in_2_2_sync_error",     std_name: "ssi_in_2_sync_error",       module: 6,  domain: 0 }
        { name: "ssi_in_2_2_value",          type: "tx_pdo",  label: "ssi_in_2_2_value",          std_name: "ssi_in_2_value",            module: 6,  domain: 0 }

        { name: "ssi_in_3_1_data_error",     type: "tx_pdo",  label: "ssi_in_3_1_data_error",     std_name: "ssi_in_1_data_error",       module: 7,  domain: 0 }
        { name: "ssi_in_3_1_frame_error",    type: "tx_pdo",  label: "ssi_in_3_1_frame_error",    std_name: "ssi_in_1_frame_error",      module: 7,  domain: 0 }
        { name: "ssi_in_3_1_power_error",    type: "tx_pdo",  label: "ssi_in_3_1_power_error",    std_name: "ssi_in_1_power_error",      module: 7,  domain: 0 }
        { name: "ssi_in_3_1_data_mismatch",  type: "tx_pdo",  label: "ssi_in_3_1_data_mismatch",  std_name: "ssi_in_1_data_mismatch",    module: 7,  domain: 0 }
        { name: "ssi_in_3_1_sync_error",     type: "tx_pdo",  label: "ssi_in_3_1_sync_error",     std_name: "ssi_in_1_sync_error",       module: 7,  domain: 0 }
        { name: "ssi_in_3_1_value",          type: "tx_pdo",  label: "ssi_in_3_1_value",          std_name: "ssi_in_1_value",            module: 7,  domain: 0 }
        { name: "ssi_in_3_2_data_error",     type: "tx_pdo",  label: "ssi_in_3_2_data_error",     std_name: "ssi_in_2_data_error",       module: 7,  domain: 0 }
        { name: "ssi_in_3_2_frame_error",    type: "tx_pdo",  label: "ssi_in_3_2_frame_error",    std_name: "ssi_in_2_frame_error",      module: 7,  domain: 0 }
        { name: "ssi_in_3_2_power_error",    type: "tx_pdo",  label: "ssi_in_3_2_power_error",    std_name: "ssi_in_2_power_error",      module: 7,  domain: 0 }
        { name: "ssi_in_3_2_data_mismatch",  type: "tx_pdo",  label: "ssi_in_3_2_data_mismatch",  std_name: "ssi_in_2_data_mismatch",    module: 7,  domain: 0 }
        { name: "ssi_in_3_2_sync_error",     type: "tx_pdo",  label: "ssi_in_3_2_sync_error",     std_name: "ssi_in_2_sync_error",       module: 7,  domain: 0 }
        { name: "ssi_in_3_2_value",          type: "tx_pdo",  label: "ssi_in_3_2_value",          std_name: "ssi_in_2_value",            module: 7,  domain: 0 }

        # 3-module Power supply
        { name: "power_1_on",                  type: "tx_pdo",  label: "power_1_on",                  std_name: "power_on",                  module: 8, domain: 0 }
        { name: "power_1_overload",            type: "tx_pdo",  label: "power_1_overload",            std_name: "power_overload",            module: 8, domain: 0 }
        { name: "power_2_on",                  type: "tx_pdo",  label: "power_2_on",                  std_name: "power_on",                  module: 11, domain: 0 }
        { name: "power_2_overload",            type: "tx_pdo",  label: "power_2_overload",            std_name: "power_overload",            module: 11, domain: 0 }
        { name: "power_3_on",                  type: "tx_pdo",  label: "power_3_on",                  std_name: "power_on",                  module: 14, domain: 0 }
        { name: "power_3_overload",            type: "tx_pdo",  label: "power_3_overload",            std_name: "power_overload",            module: 14, domain: 0 }

        # Resistor bridge 1
        { name: "bridge_1_gap",                type: "tx_pdo",  label: "bridge_1_gap",                std_name: "bridge_gap",                 module: 9,  domain: 0 }
        { name: "bridge_1_overrange",          type: "tx_pdo",  label: "bridge_1_overrange",          std_name: "bridge_overrange",           module: 9,  domain: 0 }
        { name: "bridge_1_data_invalid",       type: "tx_pdo",  label: "bridge_1_data_invalid",       std_name: "bridge_data_invalid",        module: 9,  domain: 0 }
        { name: "bridge_1_error",              type: "tx_pdo",  label: "bridge_1_error",              std_name: "bridge_error",               module: 9,  domain: 0 }
        { name: "bridge_1_calibrating",        type: "tx_pdo",  label: "bridge_1_calibrating",        std_name: "bridge_calibrating",         module: 9,  domain: 0 }
        { name: "bridge_1_steady_state",       type: "tx_pdo",  label: "bridge_1_steady_state",       std_name: "bridge_steady_state",        module: 9,  domain: 0 }
        { name: "bridge_1_sync_error",         type: "tx_pdo",  label: "bridge_1_sync_error",         std_name: "bridge_sync_error",          module: 9,  domain: 0 }
        { name: "bridge_1_toggle",             type: "tx_pdo",  label: "bridge_1_toggle",             std_name: "bridge_toggle",              module: 9,  domain: 0 }
        { name: "bridge_1_int_value",          type: "tx_pdo",  label: "bridge_1_int_value",          std_name: "bridge_int_value",           module: 9,  domain: 0 }
        { name: "bridge_1_real_value",         type: "tx_pdo",  label: "bridge_1_real_value",         std_name: "bridge_real_value",          module: 9,  domain: 0 }
        { name: "bridge_1_start_calibration",  type: "rx_pdo",  label: "bridge_1_start_calibration",  std_name: "bridge_start_calibration",   module: 9,  domain: 0 }
        { name: "bridge_1_disable_calibration",type: "rx_pdo",  label: "bridge_1_disable_calibration",std_name: "bridge_disable_calibration", module: 9,  domain: 0 }
        { name: "bridge_1_input_freeze",       type: "rx_pdo",  label: "bridge_1_input_freeze",       std_name: "bridge_input_freeze",        module: 9,  domain: 0 }
        { name: "bridge_1_sample_mode",        type: "rx_pdo",  label: "bridge_1_sample_mode",        std_name: "bridge_sample_mode",         module: 9,  domain: 0 }
        { name: "bridge_1_tara",               type: "rx_pdo",  label: "bridge_1_tara",               std_name: "bridge_tara",                module: 9,  domain: 0 }
        { name: "bridge_1_mode0_enable_filter_rx",        type: "rx_sdo",  label: "bridge_1_mode0_enable_filter_rx",        std_name: "bridge_mode0_enable_filter",        module: 9,  domain: 0 }
        { name: "bridge_1_mode1_enable_filter_rx",        type: "rx_sdo",  label: "bridge_1_mode1_enable_filter_rx",        std_name: "bridge_mode1_enable_filter",        module: 9,  domain: 0 }
        { name: "bridge_1_mode0_enable_averager_rx",      type: "rx_sdo",  label: "bridge_1_mode0_enable_averager_rx",      std_name: "bridge_mode0_enable_averager",      module: 9,  domain: 0 }
        { name: "bridge_1_mode1_enable_averager_rx",      type: "rx_sdo",  label: "bridge_1_mode1_enable_averager_rx",      std_name: "bridge_mode1_enable_averager",      module: 9,  domain: 0 }
        { name: "bridge_1_mode0_filter_settings_rx",      type: "rx_sdo",  label: "bridge_1_mode0_filter_settings_rx",      std_name: "bridge_mode0_filter_settings",      module: 9,  domain: 0 }
        { name: "bridge_1_mode1_filter_settings_rx",      type: "rx_sdo",  label: "bridge_1_mode1_filter_settings_rx",      std_name: "bridge_mode1_filter_settings",      module: 9,  domain: 0 }
        { name: "bridge_1_dynamic_filter_change_time_rx", type: "rx_sdo",  label: "bridge_1_dynamic_filter_change_time_rx", std_name: "bridge_dynamic_filter_change_time", module: 9,  domain: 0 }
        { name: "bridge_1_dynamic_filter_delta_rx",       type: "rx_sdo",  label: "bridge_1_dynamic_filter_delta_rx",       std_name: "bridge_dynamic_filter_delta",       module: 9,  domain: 0 }
        { name: "bridge_1_filter_settings_rx",            type: "rx_sdo",  label: "bridge_1_filter_settings_rx",            std_name: "bridge_filter_settings",            module: 9,  domain: 0 }
        { name: "bridge_1_gain_rx",                       type: "rx_sdo",  label: "bridge_1_gain_rx",                       std_name: "bridge_gain",                       module: 9,  domain: 0 }
        { name: "bridge_1_tara_float_rx",                 type: "rx_sdo",  label: "bridge_1_tara_float_rx",                 std_name: "bridge_tara_float",                 module: 9,  domain: 0 }
        { name: "bridge_1_rated_output_rx",               type: "rx_sdo",  label: "bridge_1_rated_output_rx",               std_name: "bridge_rated_output",               module: 9,  domain: 0 }
        { name: "bridge_1_nominal_load_rx",               type: "rx_sdo",  label: "bridge_1_nominal_load_rx",               std_name: "bridge_nominal_load",               module: 9,  domain: 0 }
        { name: "bridge_1_filter_zero_balance_rx",        type: "rx_sdo",  label: "bridge_1_filter_zero_balance_rx",        std_name: "bridge_filter_zero_balance",        module: 9,  domain: 0 }
        { name: "bridge_1_gravity_of_earth_rx",           type: "rx_sdo",  label: "bridge_1_gravity_of_earth_rx",           std_name: "bridge_gravity_of_earth",           module: 9,  domain: 0 }
        { name: "bridge_1_scale_factor_rx",               type: "rx_sdo",  label: "bridge_1_scale_factor_rx",               std_name: "bridge_scale_factor",               module: 9,  domain: 0 }
        { name: "bridge_1_reference_load_rx",             type: "rx_sdo",  label: "bridge_1_reference_load_rx",             std_name: "bridge_reference_load",             module: 9,  domain: 0 }

        { name: "bridge_1_serial_number_tx",              type: "tx_sdo",  label: "bridge_1_serial_number_tx",              std_name: "bridge_serial_number",              module: 9,  domain: 0 }
        { name: "bridge_1_mode0_enable_filter_tx",        type: "tx_sdo",  label: "bridge_1_mode0_enable_filter_tx",        std_name: "bridge_mode0_enable_filter",        module: 9,  domain: 0 }
        { name: "bridge_1_mode1_enable_filter_tx",        type: "tx_sdo",  label: "bridge_1_mode1_enable_filter_tx",        std_name: "bridge_mode1_enable_filter",        module: 9,  domain: 0 }
        { name: "bridge_1_mode0_enable_averager_tx",      type: "tx_sdo",  label: "bridge_1_mode0_enable_averager_tx",      std_name: "bridge_mode0_enable_averager",      module: 9,  domain: 0 }
        { name: "bridge_1_mode1_enable_averager_tx",      type: "tx_sdo",  label: "bridge_1_mode1_enable_averager_tx",      std_name: "bridge_mode1_enable_averager",      module: 9,  domain: 0 }
        { name: "bridge_1_mode0_filter_settings_tx",      type: "tx_sdo",  label: "bridge_1_mode0_filter_settings_tx",      std_name: "bridge_mode0_filter_settings",      module: 9,  domain: 0 }
        { name: "bridge_1_mode1_filter_settings_tx",      type: "tx_sdo",  label: "bridge_1_mode1_filter_settings_tx",      std_name: "bridge_mode1_filter_settings",      module: 9,  domain: 0 }
        { name: "bridge_1_dynamic_filter_change_time_tx", type: "tx_sdo",  label: "bridge_1_dynamic_filter_change_time_tx", std_name: "bridge_dynamic_filter_change_time", module: 9,  domain: 0 }
        { name: "bridge_1_dynamic_filter_delta_tx",       type: "tx_sdo",  label: "bridge_1_dynamic_filter_delta_tx",       std_name: "bridge_dynamic_filter_delta",       module: 9,  domain: 0 }
        { name: "bridge_1_filter_settings_tx",            type: "tx_sdo",  label: "bridge_1_filter_settings_tx",            std_name: "bridge_filter_settings",            module: 9,  domain: 0 }
        { name: "bridge_1_gain_tx",                       type: "tx_sdo",  label: "bridge_1_gain_tx",                       std_name: "bridge_gain",                       module: 9,  domain: 0 }
        { name: "bridge_1_tara_float_tx",                 type: "tx_sdo",  label: "bridge_1_tara_float_tx",                 std_name: "bridge_tara_float",                 module: 9,  domain: 0 }
        { name: "bridge_1_rated_output_tx",               type: "tx_sdo",  label: "bridge_1_rated_output_tx",               std_name: "bridge_rated_output",               module: 9,  domain: 0 }
        { name: "bridge_1_nominal_load_tx",               type: "tx_sdo",  label: "bridge_1_nominal_load_tx",               std_name: "bridge_nominal_load",               module: 9,  domain: 0 }
        { name: "bridge_1_filter_zero_balance_tx",        type: "tx_sdo",  label: "bridge_1_filter_zero_balance_tx",        std_name: "bridge_filter_zero_balance",        module: 9,  domain: 0 }
        { name: "bridge_1_gravity_of_earth_tx",           type: "tx_sdo",  label: "bridge_1_gravity_of_earth_tx",           std_name: "bridge_gravity_of_earth",           module: 9,  domain: 0 }
        { name: "bridge_1_scale_factor_tx",               type: "tx_sdo",  label: "bridge_1_scale_factor_tx",               std_name: "bridge_scale_factor",               module: 9,  domain: 0 }
        { name: "bridge_1_reference_load_tx",             type: "tx_sdo",  label: "bridge_1_reference_load_tx",             std_name: "bridge_reference_load",             module: 9,  domain: 0 }

        # Resistor bridge 2
        { name: "bridge_2_gap",                type: "tx_pdo",  label: "bridge_2_gap",                std_name: "bridge_gap",                 module: 10,  domain: 0 }
        { name: "bridge_2_overrange",          type: "tx_pdo",  label: "bridge_2_overrange",          std_name: "bridge_overrange",           module: 10,  domain: 0 }
        { name: "bridge_2_data_invalid",       type: "tx_pdo",  label: "bridge_2_data_invalid",       std_name: "bridge_data_invalid",        module: 10,  domain: 0 }
        { name: "bridge_2_error",              type: "tx_pdo",  label: "bridge_2_error",              std_name: "bridge_error",               module: 10,  domain: 0 }
        { name: "bridge_2_calibrating",        type: "tx_pdo",  label: "bridge_2_calibrating",        std_name: "bridge_calibrating",         module: 10,  domain: 0 }
        { name: "bridge_2_steady_state",       type: "tx_pdo",  label: "bridge_2_steady_state",       std_name: "bridge_steady_state",        module: 10,  domain: 0 }
        { name: "bridge_2_sync_error",         type: "tx_pdo",  label: "bridge_2_sync_error",         std_name: "bridge_sync_error",          module: 10,  domain: 0 }
        { name: "bridge_2_toggle",             type: "tx_pdo",  label: "bridge_2_toggle",             std_name: "bridge_toggle",              module: 10,  domain: 0 }
        { name: "bridge_2_int_value",          type: "tx_pdo",  label: "bridge_2_int_value",          std_name: "bridge_int_value",           module: 10,  domain: 0 }
        { name: "bridge_2_real_value",         type: "tx_pdo",  label: "bridge_2_real_value",         std_name: "bridge_real_value",          module: 10,  domain: 0 }
        { name: "bridge_2_start_calibration",  type: "rx_pdo",  label: "bridge_2_start_calibration",  std_name: "bridge_start_calibration",   module: 10,  domain: 0 }
        { name: "bridge_2_disable_calibration",type: "rx_pdo",  label: "bridge_2_disable_calibration",std_name: "bridge_disable_calibration", module: 10,  domain: 0 }
        { name: "bridge_2_input_freeze",       type: "rx_pdo",  label: "bridge_2_input_freeze",       std_name: "bridge_input_freeze",        module: 10,  domain: 0 }
        { name: "bridge_2_sample_mode",        type: "rx_pdo",  label: "bridge_2_sample_mode",        std_name: "bridge_sample_mode",         module: 10,  domain: 0 }
        { name: "bridge_2_tara",               type: "rx_pdo",  label: "bridge_2_tara",               std_name: "bridge_tara",                module: 10,  domain: 0 }

        { name: "bridge_2_mode0_enable_filter_rx",        type: "rx_sdo",  label: "bridge_2_mode0_enable_filter_rx",        std_name: "bridge_mode0_enable_filter",        module: 10,  domain: 0 }
        { name: "bridge_2_mode1_enable_filter_rx",        type: "rx_sdo",  label: "bridge_2_mode1_enable_filter_rx",        std_name: "bridge_mode1_enable_filter",        module: 10,  domain: 0 }
        { name: "bridge_2_mode0_enable_averager_rx",      type: "rx_sdo",  label: "bridge_2_mode0_enable_averager_rx",      std_name: "bridge_mode0_enable_averager",      module: 10,  domain: 0 }
        { name: "bridge_2_mode1_enable_averager_rx",      type: "rx_sdo",  label: "bridge_2_mode1_enable_averager_rx",      std_name: "bridge_mode1_enable_averager",      module: 10,  domain: 0 }
        { name: "bridge_2_mode0_filter_settings_rx",      type: "rx_sdo",  label: "bridge_2_mode0_filter_settings_rx",      std_name: "bridge_mode0_filter_settings",      module: 10,  domain: 0 }
        { name: "bridge_2_mode1_filter_settings_rx",      type: "rx_sdo",  label: "bridge_2_mode1_filter_settings_rx",      std_name: "bridge_mode1_filter_settings",      module: 10,  domain: 0 }
        { name: "bridge_2_dynamic_filter_change_time_rx", type: "rx_sdo",  label: "bridge_2_dynamic_filter_change_time_rx", std_name: "bridge_dynamic_filter_change_time", module: 10,  domain: 0 }
        { name: "bridge_2_dynamic_filter_delta_rx",       type: "rx_sdo",  label: "bridge_2_dynamic_filter_delta_rx",       std_name: "bridge_dynamic_filter_delta",       module: 10,  domain: 0 }
        { name: "bridge_2_filter_settings_rx",            type: "rx_sdo",  label: "bridge_2_filter_settings_rx",            std_name: "bridge_filter_settings",            module: 10,  domain: 0 }
        { name: "bridge_2_gain_rx",                       type: "rx_sdo",  label: "bridge_2_gain_rx",                       std_name: "bridge_gain",                       module: 10,  domain: 0 }
        { name: "bridge_2_tara_float_rx",                 type: "rx_sdo",  label: "bridge_2_tara_float_rx",                 std_name: "bridge_tara_float",                 module: 10,  domain: 0 }
        { name: "bridge_2_rated_output_rx",               type: "rx_sdo",  label: "bridge_2_rated_output_rx",               std_name: "bridge_rated_output",               module: 10,  domain: 0 }
        { name: "bridge_2_nominal_load_rx",               type: "rx_sdo",  label: "bridge_2_nominal_load_rx",               std_name: "bridge_nominal_load",               module: 10,  domain: 0 }
        { name: "bridge_2_filter_zero_balance_rx",        type: "rx_sdo",  label: "bridge_2_filter_zero_balance_rx",        std_name: "bridge_filter_zero_balance",        module: 10,  domain: 0 }
        { name: "bridge_2_gravity_of_earth_rx",           type: "rx_sdo",  label: "bridge_2_gravity_of_earth_rx",           std_name: "bridge_gravity_of_earth",           module: 10,  domain: 0 }
        { name: "bridge_2_scale_factor_rx",               type: "rx_sdo",  label: "bridge_2_scale_factor_rx",               std_name: "bridge_scale_factor",               module: 10,  domain: 0 }
        { name: "bridge_2_reference_load_rx",             type: "rx_sdo",  label: "bridge_2_reference_load_rx",             std_name: "bridge_reference_load",             module: 10,  domain: 0 }

        { name: "bridge_2_serial_number_tx",              type: "tx_sdo",  label: "bridge_2_serial_number_tx",              std_name: "bridge_serial_number",              module: 10,  domain: 0 }
        { name: "bridge_2_mode0_enable_filter_tx",        type: "tx_sdo",  label: "bridge_2_mode0_enable_filter_tx",        std_name: "bridge_mode0_enable_filter",        module: 10,  domain: 0 }
        { name: "bridge_2_mode1_enable_filter_tx",        type: "tx_sdo",  label: "bridge_2_mode1_enable_filter_tx",        std_name: "bridge_mode1_enable_filter",        module: 10,  domain: 0 }
        { name: "bridge_2_mode0_enable_averager_tx",      type: "tx_sdo",  label: "bridge_2_mode0_enable_averager_tx",      std_name: "bridge_mode0_enable_averager",      module: 10,  domain: 0 }
        { name: "bridge_2_mode1_enable_averager_tx",      type: "tx_sdo",  label: "bridge_2_mode1_enable_averager_tx",      std_name: "bridge_mode1_enable_averager",      module: 10,  domain: 0 }
        { name: "bridge_2_mode0_filter_settings_tx",      type: "tx_sdo",  label: "bridge_2_mode0_filter_settings_tx",      std_name: "bridge_mode0_filter_settings",      module: 10,  domain: 0 }
        { name: "bridge_2_mode1_filter_settings_tx",      type: "tx_sdo",  label: "bridge_2_mode1_filter_settings_tx",      std_name: "bridge_mode1_filter_settings",      module: 10,  domain: 0 }
        { name: "bridge_2_dynamic_filter_change_time_tx", type: "tx_sdo",  label: "bridge_2_dynamic_filter_change_time_tx", std_name: "bridge_dynamic_filter_change_time", module: 10,  domain: 0 }
        { name: "bridge_2_dynamic_filter_delta_tx",       type: "tx_sdo",  label: "bridge_2_dynamic_filter_delta_tx",       std_name: "bridge_dynamic_filter_delta",       module: 10,  domain: 0 }
        { name: "bridge_2_filter_settings_tx",            type: "tx_sdo",  label: "bridge_2_filter_settings_tx",            std_name: "bridge_filter_settings",            module: 10,  domain: 0 }
        { name: "bridge_2_gain_tx",                       type: "tx_sdo",  label: "bridge_2_gain_tx",                       std_name: "bridge_gain",                       module: 10,  domain: 0 }
        { name: "bridge_2_tara_float_tx",                 type: "tx_sdo",  label: "bridge_2_tara_float_tx",                 std_name: "bridge_tara_float",                 module: 10,  domain: 0 }
        { name: "bridge_2_rated_output_tx",               type: "tx_sdo",  label: "bridge_2_rated_output_tx",               std_name: "bridge_rated_output",               module: 10,  domain: 0 }
        { name: "bridge_2_nominal_load_tx",               type: "tx_sdo",  label: "bridge_2_nominal_load_tx",               std_name: "bridge_nominal_load",               module: 10,  domain: 0 }
        { name: "bridge_2_filter_zero_balance_tx",        type: "tx_sdo",  label: "bridge_2_filter_zero_balance_tx",        std_name: "bridge_filter_zero_balance",        module: 10,  domain: 0 }
        { name: "bridge_2_gravity_of_earth_tx",           type: "tx_sdo",  label: "bridge_2_gravity_of_earth_tx",           std_name: "bridge_gravity_of_earth",           module: 10,  domain: 0 }
        { name: "bridge_2_scale_factor_tx",               type: "tx_sdo",  label: "bridge_2_scale_factor_tx",               std_name: "bridge_scale_factor",               module: 10,  domain: 0 }
        { name: "bridge_2_reference_load_tx",             type: "tx_sdo",  label: "bridge_2_reference_load_tx",             std_name: "bridge_reference_load",             module: 10,  domain: 0 }


        # Resistor bridge 3
        { name: "bridge_3_gap",                type: "tx_pdo",  label: "bridge_3_gap",                std_name: "bridge_gap",                 module: 12,  domain: 0 }
        { name: "bridge_3_overrange",          type: "tx_pdo",  label: "bridge_3_overrange",          std_name: "bridge_overrange",           module: 12,  domain: 0 }
        { name: "bridge_3_data_invalid",       type: "tx_pdo",  label: "bridge_3_data_invalid",       std_name: "bridge_data_invalid",        module: 12,  domain: 0 }
        { name: "bridge_3_error",              type: "tx_pdo",  label: "bridge_3_error",              std_name: "bridge_error",               module: 12,  domain: 0 }
        { name: "bridge_3_calibrating",        type: "tx_pdo",  label: "bridge_3_calibrating",        std_name: "bridge_calibrating",         module: 12,  domain: 0 }
        { name: "bridge_3_steady_state",       type: "tx_pdo",  label: "bridge_3_steady_state",       std_name: "bridge_steady_state",        module: 12,  domain: 0 }
        { name: "bridge_3_sync_error",         type: "tx_pdo",  label: "bridge_3_sync_error",         std_name: "bridge_sync_error",          module: 12,  domain: 0 }
        { name: "bridge_3_toggle",             type: "tx_pdo",  label: "bridge_3_toggle",             std_name: "bridge_toggle",              module: 12,  domain: 0 }
        { name: "bridge_3_int_value",          type: "tx_pdo",  label: "bridge_3_int_value",          std_name: "bridge_int_value",           module: 12,  domain: 0 }
        { name: "bridge_3_real_value",         type: "tx_pdo",  label: "bridge_3_real_value",         std_name: "bridge_real_value",          module: 12,  domain: 0 }
        { name: "bridge_3_start_calibration",  type: "rx_pdo",  label: "bridge_3_start_calibration",  std_name: "bridge_start_calibration",   module: 12,  domain: 0 }
        { name: "bridge_3_disable_calibration",type: "rx_pdo",  label: "bridge_3_disable_calibration",std_name: "bridge_disable_calibration", module: 12,  domain: 0 }
        { name: "bridge_3_input_freeze",       type: "rx_pdo",  label: "bridge_3_input_freeze",       std_name: "bridge_input_freeze",        module: 12,  domain: 0 }
        { name: "bridge_3_sample_mode",        type: "rx_pdo",  label: "bridge_3_sample_mode",        std_name: "bridge_sample_mode",         module: 12,  domain: 0 }
        { name: "bridge_3_tara",               type: "rx_pdo",  label: "bridge_3_tara",               std_name: "bridge_tara",                module: 12,  domain: 0 }

        { name: "bridge_3_mode0_enable_filter_rx",        type: "rx_sdo",  label: "bridge_3_mode0_enable_filter_rx",        std_name: "bridge_mode0_enable_filter",        module: 12,  domain: 0 }
        { name: "bridge_3_mode1_enable_filter_rx",        type: "rx_sdo",  label: "bridge_3_mode1_enable_filter_rx",        std_name: "bridge_mode1_enable_filter",        module: 12,  domain: 0 }
        { name: "bridge_3_mode0_enable_averager_rx",      type: "rx_sdo",  label: "bridge_3_mode0_enable_averager_rx",      std_name: "bridge_mode0_enable_averager",      module: 12,  domain: 0 }
        { name: "bridge_3_mode1_enable_averager_rx",      type: "rx_sdo",  label: "bridge_3_mode1_enable_averager_rx",      std_name: "bridge_mode1_enable_averager",      module: 12,  domain: 0 }
        { name: "bridge_3_mode0_filter_settings_rx",      type: "rx_sdo",  label: "bridge_3_mode0_filter_settings_rx",      std_name: "bridge_mode0_filter_settings",      module: 12,  domain: 0 }
        { name: "bridge_3_mode1_filter_settings_rx",      type: "rx_sdo",  label: "bridge_3_mode1_filter_settings_rx",      std_name: "bridge_mode1_filter_settings",      module: 12,  domain: 0 }
        { name: "bridge_3_dynamic_filter_change_time_rx", type: "rx_sdo",  label: "bridge_3_dynamic_filter_change_time_rx", std_name: "bridge_dynamic_filter_change_time", module: 12,  domain: 0 }
        { name: "bridge_3_dynamic_filter_delta_rx",       type: "rx_sdo",  label: "bridge_3_dynamic_filter_delta_rx",       std_name: "bridge_dynamic_filter_delta",       module: 12,  domain: 0 }
        { name: "bridge_3_filter_settings_rx",            type: "rx_sdo",  label: "bridge_3_filter_settings_rx",            std_name: "bridge_filter_settings",            module: 12,  domain: 0 }
        { name: "bridge_3_gain_rx",                       type: "rx_sdo",  label: "bridge_3_gain_rx",                       std_name: "bridge_gain",                       module: 12,  domain: 0 }
        { name: "bridge_3_tara_float_rx",                 type: "rx_sdo",  label: "bridge_3_tara_float_rx",                 std_name: "bridge_tara_float",                 module: 12,  domain: 0 }
        { name: "bridge_3_rated_output_rx",               type: "rx_sdo",  label: "bridge_3_rated_output_rx",               std_name: "bridge_rated_output",               module: 12,  domain: 0 }
        { name: "bridge_3_nominal_load_rx",               type: "rx_sdo",  label: "bridge_3_nominal_load_rx",               std_name: "bridge_nominal_load",               module: 12,  domain: 0 }
        { name: "bridge_3_filter_zero_balance_rx",        type: "rx_sdo",  label: "bridge_3_filter_zero_balance_rx",        std_name: "bridge_filter_zero_balance",        module: 12,  domain: 0 }
        { name: "bridge_3_gravity_of_earth_rx",           type: "rx_sdo",  label: "bridge_3_gravity_of_earth_rx",           std_name: "bridge_gravity_of_earth",           module: 12,  domain: 0 }
        { name: "bridge_3_scale_factor_rx",               type: "rx_sdo",  label: "bridge_3_scale_factor_rx",               std_name: "bridge_scale_factor",               module: 12,  domain: 0 }
        { name: "bridge_3_reference_load_rx",             type: "rx_sdo",  label: "bridge_3_reference_load_rx",             std_name: "bridge_reference_load",             module: 12,  domain: 0 }

        { name: "bridge_3_serial_number_tx",              type: "tx_sdo",  label: "bridge_3_serial_number_tx",              std_name: "bridge_serial_number",              module: 12,  domain: 0 }
        { name: "bridge_3_mode0_enable_filter_tx",        type: "tx_sdo",  label: "bridge_3_mode0_enable_filter_tx",        std_name: "bridge_mode0_enable_filter",        module: 12,  domain: 0 }
        { name: "bridge_3_mode1_enable_filter_tx",        type: "tx_sdo",  label: "bridge_3_mode1_enable_filter_tx",        std_name: "bridge_mode1_enable_filter",        module: 12,  domain: 0 }
        { name: "bridge_3_mode0_enable_averager_tx",      type: "tx_sdo",  label: "bridge_3_mode0_enable_averager_tx",      std_name: "bridge_mode0_enable_averager",      module: 12,  domain: 0 }
        { name: "bridge_3_mode1_enable_averager_tx",      type: "tx_sdo",  label: "bridge_3_mode1_enable_averager_tx",      std_name: "bridge_mode1_enable_averager",      module: 12,  domain: 0 }
        { name: "bridge_3_mode0_filter_settings_tx",      type: "tx_sdo",  label: "bridge_3_mode0_filter_settings_tx",      std_name: "bridge_mode0_filter_settings",      module: 12,  domain: 0 }
        { name: "bridge_3_mode1_filter_settings_tx",      type: "tx_sdo",  label: "bridge_3_mode1_filter_settings_tx",      std_name: "bridge_mode1_filter_settings",      module: 12,  domain: 0 }
        { name: "bridge_3_dynamic_filter_change_time_tx", type: "tx_sdo",  label: "bridge_3_dynamic_filter_change_time_tx", std_name: "bridge_dynamic_filter_change_time", module: 12,  domain: 0 }
        { name: "bridge_3_dynamic_filter_delta_tx",       type: "tx_sdo",  label: "bridge_3_dynamic_filter_delta_tx",       std_name: "bridge_dynamic_filter_delta",       module: 12,  domain: 0 }
        { name: "bridge_3_filter_settings_tx",            type: "tx_sdo",  label: "bridge_3_filter_settings_tx",            std_name: "bridge_filter_settings",            module: 12,  domain: 0 }
        { name: "bridge_3_gain_tx",                       type: "tx_sdo",  label: "bridge_3_gain_tx",                       std_name: "bridge_gain",                       module: 12,  domain: 0 }
        { name: "bridge_3_tara_float_tx",                 type: "tx_sdo",  label: "bridge_3_tara_float_tx",                 std_name: "bridge_tara_float",                 module: 12,  domain: 0 }
        { name: "bridge_3_rated_output_tx",               type: "tx_sdo",  label: "bridge_3_rated_output_tx",               std_name: "bridge_rated_output",               module: 12,  domain: 0 }
        { name: "bridge_3_nominal_load_tx",               type: "tx_sdo",  label: "bridge_3_nominal_load_tx",               std_name: "bridge_nominal_load",               module: 12,  domain: 0 }
        { name: "bridge_3_filter_zero_balance_tx",        type: "tx_sdo",  label: "bridge_3_filter_zero_balance_tx",        std_name: "bridge_filter_zero_balance",        module: 12,  domain: 0 }
        { name: "bridge_3_gravity_of_earth_tx",           type: "tx_sdo",  label: "bridge_3_gravity_of_earth_tx",           std_name: "bridge_gravity_of_earth",           module: 12,  domain: 0 }
        { name: "bridge_3_scale_factor_tx",               type: "tx_sdo",  label: "bridge_3_scale_factor_tx",               std_name: "bridge_scale_factor",               module: 12,  domain: 0 }
        { name: "bridge_3_reference_load_tx",             type: "tx_sdo",  label: "bridge_3_reference_load_tx",             std_name: "bridge_reference_load",             module: 12,  domain: 0 }

        # Resistor bridge 4
        { name: "bridge_4_gap",                type: "tx_pdo",  label: "bridge_4_gap",                std_name: "bridge_gap",                 module: 13,  domain: 0 }
        { name: "bridge_4_overrange",          type: "tx_pdo",  label: "bridge_4_overrange",          std_name: "bridge_overrange",           module: 13,  domain: 0 }
        { name: "bridge_4_data_invalid",       type: "tx_pdo",  label: "bridge_4_data_invalid",       std_name: "bridge_data_invalid",        module: 13,  domain: 0 }
        { name: "bridge_4_error",              type: "tx_pdo",  label: "bridge_4_error",              std_name: "bridge_error",               module: 13,  domain: 0 }
        { name: "bridge_4_calibrating",        type: "tx_pdo",  label: "bridge_4_calibrating",        std_name: "bridge_calibrating",         module: 13,  domain: 0 }
        { name: "bridge_4_steady_state",       type: "tx_pdo",  label: "bridge_4_steady_state",       std_name: "bridge_steady_state",        module: 13,  domain: 0 }
        { name: "bridge_4_sync_error",         type: "tx_pdo",  label: "bridge_4_sync_error",         std_name: "bridge_sync_error",          module: 13,  domain: 0 }
        { name: "bridge_4_toggle",             type: "tx_pdo",  label: "bridge_4_toggle",             std_name: "bridge_toggle",              module: 13,  domain: 0 }
        { name: "bridge_4_int_value",          type: "tx_pdo",  label: "bridge_4_int_value",          std_name: "bridge_int_value",           module: 13,  domain: 0 }
        { name: "bridge_4_real_value",         type: "tx_pdo",  label: "bridge_4_real_value",         std_name: "bridge_real_value",          module: 13,  domain: 0 }
        { name: "bridge_4_start_calibration",  type: "rx_pdo",  label: "bridge_4_start_calibration",  std_name: "bridge_start_calibration",   module: 13,  domain: 0 }
        { name: "bridge_4_disable_calibration",type: "rx_pdo",  label: "bridge_4_disable_calibration",std_name: "bridge_disable_calibration", module: 13,  domain: 0 }
        { name: "bridge_4_input_freeze",       type: "rx_pdo",  label: "bridge_4_input_freeze",       std_name: "bridge_input_freeze",        module: 13,  domain: 0 }
        { name: "bridge_4_sample_mode",        type: "rx_pdo",  label: "bridge_4_sample_mode",        std_name: "bridge_sample_mode",         module: 13,  domain: 0 }
        { name: "bridge_4_tara",               type: "rx_pdo",  label: "bridge_4_tara",               std_name: "bridge_tara",                module: 13,  domain: 0 }

        { name: "bridge_4_mode0_enable_filter_rx",        type: "rx_sdo",  label: "bridge_4_mode0_enable_filter_rx",        std_name: "bridge_mode0_enable_filter",        module: 13,  domain: 0 }
        { name: "bridge_4_mode1_enable_filter_rx",        type: "rx_sdo",  label: "bridge_4_mode1_enable_filter_rx",        std_name: "bridge_mode1_enable_filter",        module: 13,  domain: 0 }
        { name: "bridge_4_mode0_enable_averager_rx",      type: "rx_sdo",  label: "bridge_4_mode0_enable_averager_rx",      std_name: "bridge_mode0_enable_averager",      module: 13,  domain: 0 }
        { name: "bridge_4_mode1_enable_averager_rx",      type: "rx_sdo",  label: "bridge_4_mode1_enable_averager_rx",      std_name: "bridge_mode1_enable_averager",      module: 13,  domain: 0 }
        { name: "bridge_4_mode0_filter_settings_rx",      type: "rx_sdo",  label: "bridge_4_mode0_filter_settings_rx",      std_name: "bridge_mode0_filter_settings",      module: 13,  domain: 0 }
        { name: "bridge_4_mode1_filter_settings_rx",      type: "rx_sdo",  label: "bridge_4_mode1_filter_settings_rx",      std_name: "bridge_mode1_filter_settings",      module: 13,  domain: 0 }
        { name: "bridge_4_dynamic_filter_change_time_rx", type: "rx_sdo",  label: "bridge_4_dynamic_filter_change_time_rx", std_name: "bridge_dynamic_filter_change_time", module: 13,  domain: 0 }
        { name: "bridge_4_dynamic_filter_delta_rx",       type: "rx_sdo",  label: "bridge_4_dynamic_filter_delta_rx",       std_name: "bridge_dynamic_filter_delta",       module: 13,  domain: 0 }
        { name: "bridge_4_filter_settings_rx",            type: "rx_sdo",  label: "bridge_4_filter_settings_rx",            std_name: "bridge_filter_settings",            module: 13,  domain: 0 }
        { name: "bridge_4_gain_rx",                       type: "rx_sdo",  label: "bridge_4_gain_rx",                       std_name: "bridge_gain",                       module: 13,  domain: 0 }
        { name: "bridge_4_tara_float_rx",                 type: "rx_sdo",  label: "bridge_4_tara_float_rx",                 std_name: "bridge_tara_float",                 module: 13,  domain: 0 }
        { name: "bridge_4_rated_output_rx",               type: "rx_sdo",  label: "bridge_4_rated_output_rx",               std_name: "bridge_rated_output",               module: 13,  domain: 0 }
        { name: "bridge_4_nominal_load_rx",               type: "rx_sdo",  label: "bridge_4_nominal_load_rx",               std_name: "bridge_nominal_load",               module: 13,  domain: 0 }
        { name: "bridge_4_filter_zero_balance_rx",        type: "rx_sdo",  label: "bridge_4_filter_zero_balance_rx",        std_name: "bridge_filter_zero_balance",        module: 13,  domain: 0 }
        { name: "bridge_4_gravity_of_earth_rx",           type: "rx_sdo",  label: "bridge_4_gravity_of_earth_rx",           std_name: "bridge_gravity_of_earth",           module: 13,  domain: 0 }
        { name: "bridge_4_scale_factor_rx",               type: "rx_sdo",  label: "bridge_4_scale_factor_rx",               std_name: "bridge_scale_factor",               module: 13,  domain: 0 }
        { name: "bridge_4_reference_load_rx",             type: "rx_sdo",  label: "bridge_4_reference_load_rx",             std_name: "bridge_reference_load",             module: 13,  domain: 0 }

        { name: "bridge_4_serial_number_tx",              type: "tx_sdo",  label: "bridge_4_serial_number_tx",              std_name: "bridge_serial_number",              module: 13,  domain: 0 }
        { name: "bridge_4_mode0_enable_filter_tx",        type: "tx_sdo",  label: "bridge_4_mode0_enable_filter_tx",        std_name: "bridge_mode0_enable_filter",        module: 13,  domain: 0 }
        { name: "bridge_4_mode1_enable_filter_tx",        type: "tx_sdo",  label: "bridge_4_mode1_enable_filter_tx",        std_name: "bridge_mode1_enable_filter",        module: 13,  domain: 0 }
        { name: "bridge_4_mode0_enable_averager_tx",      type: "tx_sdo",  label: "bridge_4_mode0_enable_averager_tx",      std_name: "bridge_mode0_enable_averager",      module: 13,  domain: 0 }
        { name: "bridge_4_mode1_enable_averager_tx",      type: "tx_sdo",  label: "bridge_4_mode1_enable_averager_tx",      std_name: "bridge_mode1_enable_averager",      module: 13,  domain: 0 }
        { name: "bridge_4_mode0_filter_settings_tx",      type: "tx_sdo",  label: "bridge_4_mode0_filter_settings_tx",      std_name: "bridge_mode0_filter_settings",      module: 13,  domain: 0 }
        { name: "bridge_4_mode1_filter_settings_tx",      type: "tx_sdo",  label: "bridge_4_mode1_filter_settings_tx",      std_name: "bridge_mode1_filter_settings",      module: 13,  domain: 0 }
        { name: "bridge_4_dynamic_filter_change_time_tx", type: "tx_sdo",  label: "bridge_4_dynamic_filter_change_time_tx", std_name: "bridge_dynamic_filter_change_time", module: 13,  domain: 0 }
        { name: "bridge_4_dynamic_filter_delta_tx",       type: "tx_sdo",  label: "bridge_4_dynamic_filter_delta_tx",       std_name: "bridge_dynamic_filter_delta",       module: 13,  domain: 0 }
        { name: "bridge_4_filter_settings_tx",            type: "tx_sdo",  label: "bridge_4_filter_settings_tx",            std_name: "bridge_filter_settings",            module: 13,  domain: 0 }
        { name: "bridge_4_gain_tx",                       type: "tx_sdo",  label: "bridge_4_gain_tx",                       std_name: "bridge_gain",                       module: 13,  domain: 0 }
        { name: "bridge_4_tara_float_tx",                 type: "tx_sdo",  label: "bridge_4_tara_float_tx",                 std_name: "bridge_tara_float",                 module: 13,  domain: 0 }
        { name: "bridge_4_rated_output_tx",               type: "tx_sdo",  label: "bridge_4_rated_output_tx",               std_name: "bridge_rated_output",               module: 13,  domain: 0 }
        { name: "bridge_4_nominal_load_tx",               type: "tx_sdo",  label: "bridge_4_nominal_load_tx",               std_name: "bridge_nominal_load",               module: 13,  domain: 0 }
        { name: "bridge_4_filter_zero_balance_tx",        type: "tx_sdo",  label: "bridge_4_filter_zero_balance_tx",        std_name: "bridge_filter_zero_balance",        module: 13,  domain: 0 }
        { name: "bridge_4_gravity_of_earth_tx",           type: "tx_sdo",  label: "bridge_4_gravity_of_earth_tx",           std_name: "bridge_gravity_of_earth",           module: 13,  domain: 0 }
        { name: "bridge_4_scale_factor_tx",               type: "tx_sdo",  label: "bridge_4_scale_factor_tx",               std_name: "bridge_scale_factor",               module: 13,  domain: 0 }
        { name: "bridge_4_reference_load_tx",             type: "tx_sdo",  label: "bridge_4_reference_load_tx",             std_name: "bridge_reference_load",             module: 13,  domain: 0 }

        # Resistor bridge 5
        { name: "bridge_5_gap",                type: "tx_pdo",  label: "bridge_5_gap",                std_name: "bridge_gap",                 module: 15,  domain: 0 }
        { name: "bridge_5_overrange",          type: "tx_pdo",  label: "bridge_5_overrange",          std_name: "bridge_overrange",           module: 15,  domain: 0 }
        { name: "bridge_5_data_invalid",       type: "tx_pdo",  label: "bridge_5_data_invalid",       std_name: "bridge_data_invalid",        module: 15,  domain: 0 }
        { name: "bridge_5_error",              type: "tx_pdo",  label: "bridge_5_error",              std_name: "bridge_error",               module: 15,  domain: 0 }
        { name: "bridge_5_calibrating",        type: "tx_pdo",  label: "bridge_5_calibrating",        std_name: "bridge_calibrating",         module: 15,  domain: 0 }
        { name: "bridge_5_steady_state",       type: "tx_pdo",  label: "bridge_5_steady_state",       std_name: "bridge_steady_state",        module: 15,  domain: 0 }
        { name: "bridge_5_sync_error",         type: "tx_pdo",  label: "bridge_5_sync_error",         std_name: "bridge_sync_error",          module: 15,  domain: 0 }
        { name: "bridge_5_toggle",             type: "tx_pdo",  label: "bridge_5_toggle",             std_name: "bridge_toggle",              module: 15,  domain: 0 }
        { name: "bridge_5_int_value",          type: "tx_pdo",  label: "bridge_5_int_value",          std_name: "bridge_int_value",           module: 15,  domain: 0 }
        { name: "bridge_5_real_value",         type: "tx_pdo",  label: "bridge_5_real_value",         std_name: "bridge_real_value",          module: 15,  domain: 0 }
        { name: "bridge_5_start_calibration",  type: "rx_pdo",  label: "bridge_5_start_calibration",  std_name: "bridge_start_calibration",   module: 15,  domain: 0 }
        { name: "bridge_5_disable_calibration",type: "rx_pdo",  label: "bridge_5_disable_calibration",std_name: "bridge_disable_calibration", module: 15,  domain: 0 }
        { name: "bridge_5_input_freeze",       type: "rx_pdo",  label: "bridge_5_input_freeze",       std_name: "bridge_input_freeze",        module: 15,  domain: 0 }
        { name: "bridge_5_sample_mode",        type: "rx_pdo",  label: "bridge_5_sample_mode",        std_name: "bridge_sample_mode",         module: 15,  domain: 0 }
        { name: "bridge_5_tara",               type: "rx_pdo",  label: "bridge_5_tara",               std_name: "bridge_tara",                module: 15,  domain: 0 }

        { name: "bridge_5_mode0_enable_filter_rx",        type: "rx_sdo",  label: "bridge_5_mode0_enable_filter_rx",        std_name: "bridge_mode0_enable_filter",        module: 15,  domain: 0 }
        { name: "bridge_5_mode1_enable_filter_rx",        type: "rx_sdo",  label: "bridge_5_mode1_enable_filter_rx",        std_name: "bridge_mode1_enable_filter",        module: 15,  domain: 0 }
        { name: "bridge_5_mode0_enable_averager_rx",      type: "rx_sdo",  label: "bridge_5_mode0_enable_averager_rx",      std_name: "bridge_mode0_enable_averager",      module: 15,  domain: 0 }
        { name: "bridge_5_mode1_enable_averager_rx",      type: "rx_sdo",  label: "bridge_5_mode1_enable_averager_rx",      std_name: "bridge_mode1_enable_averager",      module: 15,  domain: 0 }
        { name: "bridge_5_mode0_filter_settings_rx",      type: "rx_sdo",  label: "bridge_5_mode0_filter_settings_rx",      std_name: "bridge_mode0_filter_settings",      module: 15,  domain: 0 }
        { name: "bridge_5_mode1_filter_settings_rx",      type: "rx_sdo",  label: "bridge_5_mode1_filter_settings_rx",      std_name: "bridge_mode1_filter_settings",      module: 15,  domain: 0 }
        { name: "bridge_5_dynamic_filter_change_time_rx", type: "rx_sdo",  label: "bridge_5_dynamic_filter_change_time_rx", std_name: "bridge_dynamic_filter_change_time", module: 15,  domain: 0 }
        { name: "bridge_5_dynamic_filter_delta_rx",       type: "rx_sdo",  label: "bridge_5_dynamic_filter_delta_rx",       std_name: "bridge_dynamic_filter_delta",       module: 15,  domain: 0 }
        { name: "bridge_5_filter_settings_rx",            type: "rx_sdo",  label: "bridge_5_filter_settings_rx",            std_name: "bridge_filter_settings",            module: 15,  domain: 0 }
        { name: "bridge_5_gain_rx",                       type: "rx_sdo",  label: "bridge_5_gain_rx",                       std_name: "bridge_gain",                       module: 15,  domain: 0 }
        { name: "bridge_5_tara_float_rx",                 type: "rx_sdo",  label: "bridge_5_tara_float_rx",                 std_name: "bridge_tara_float",                 module: 15,  domain: 0 }
        { name: "bridge_5_rated_output_rx",               type: "rx_sdo",  label: "bridge_5_rated_output_rx",               std_name: "bridge_rated_output",               module: 15,  domain: 0 }
        { name: "bridge_5_nominal_load_rx",               type: "rx_sdo",  label: "bridge_5_nominal_load_rx",               std_name: "bridge_nominal_load",               module: 15,  domain: 0 }
        { name: "bridge_5_filter_zero_balance_rx",        type: "rx_sdo",  label: "bridge_5_filter_zero_balance_rx",        std_name: "bridge_filter_zero_balance",        module: 15,  domain: 0 }
        { name: "bridge_5_gravity_of_earth_rx",           type: "rx_sdo",  label: "bridge_5_gravity_of_earth_rx",           std_name: "bridge_gravity_of_earth",           module: 15,  domain: 0 }
        { name: "bridge_5_scale_factor_rx",               type: "rx_sdo",  label: "bridge_5_scale_factor_rx",               std_name: "bridge_scale_factor",               module: 15,  domain: 0 }
        { name: "bridge_5_reference_load_rx",             type: "rx_sdo",  label: "bridge_5_reference_load_rx",             std_name: "bridge_reference_load",             module: 15,  domain: 0 }

        { name: "bridge_5_serial_number_tx",              type: "tx_sdo",  label: "bridge_5_serial_number_tx",              std_name: "bridge_serial_number",              module: 15,  domain: 0 }
        { name: "bridge_5_mode0_enable_filter_tx",        type: "tx_sdo",  label: "bridge_5_mode0_enable_filter_tx",        std_name: "bridge_mode0_enable_filter",        module: 15,  domain: 0 }
        { name: "bridge_5_mode1_enable_filter_tx",        type: "tx_sdo",  label: "bridge_5_mode1_enable_filter_tx",        std_name: "bridge_mode1_enable_filter",        module: 15,  domain: 0 }
        { name: "bridge_5_mode0_enable_averager_tx",      type: "tx_sdo",  label: "bridge_5_mode0_enable_averager_tx",      std_name: "bridge_mode0_enable_averager",      module: 15,  domain: 0 }
        { name: "bridge_5_mode1_enable_averager_tx",      type: "tx_sdo",  label: "bridge_5_mode1_enable_averager_tx",      std_name: "bridge_mode1_enable_averager",      module: 15,  domain: 0 }
        { name: "bridge_5_mode0_filter_settings_tx",      type: "tx_sdo",  label: "bridge_5_mode0_filter_settings_tx",      std_name: "bridge_mode0_filter_settings",      module: 15,  domain: 0 }
        { name: "bridge_5_mode1_filter_settings_tx",      type: "tx_sdo",  label: "bridge_5_mode1_filter_settings_tx",      std_name: "bridge_mode1_filter_settings",      module: 15,  domain: 0 }
        { name: "bridge_5_dynamic_filter_change_time_tx", type: "tx_sdo",  label: "bridge_5_dynamic_filter_change_time_tx", std_name: "bridge_dynamic_filter_change_time", module: 15,  domain: 0 }
        { name: "bridge_5_dynamic_filter_delta_tx",       type: "tx_sdo",  label: "bridge_5_dynamic_filter_delta_tx",       std_name: "bridge_dynamic_filter_delta",       module: 15,  domain: 0 }
        { name: "bridge_5_filter_settings_tx",            type: "tx_sdo",  label: "bridge_5_filter_settings_tx",            std_name: "bridge_filter_settings",            module: 15,  domain: 0 }
        { name: "bridge_5_gain_tx",                       type: "tx_sdo",  label: "bridge_5_gain_tx",                       std_name: "bridge_gain",                       module: 15,  domain: 0 }
        { name: "bridge_5_tara_float_tx",                 type: "tx_sdo",  label: "bridge_5_tara_float_tx",                 std_name: "bridge_tara_float",                 module: 15,  domain: 0 }
        { name: "bridge_5_rated_output_tx",               type: "tx_sdo",  label: "bridge_5_rated_output_tx",               std_name: "bridge_rated_output",               module: 15,  domain: 0 }
        { name: "bridge_5_nominal_load_tx",               type: "tx_sdo",  label: "bridge_5_nominal_load_tx",               std_name: "bridge_nominal_load",               module: 15,  domain: 0 }
        { name: "bridge_5_filter_zero_balance_tx",        type: "tx_sdo",  label: "bridge_5_filter_zero_balance_tx",        std_name: "bridge_filter_zero_balance",        module: 15,  domain: 0 }
        { name: "bridge_5_gravity_of_earth_tx",           type: "tx_sdo",  label: "bridge_5_gravity_of_earth_tx",           std_name: "bridge_gravity_of_earth",           module: 15,  domain: 0 }
        { name: "bridge_5_scale_factor_tx",               type: "tx_sdo",  label: "bridge_5_scale_factor_tx",               std_name: "bridge_scale_factor",               module: 15,  domain: 0 }
        { name: "bridge_5_reference_load_tx",             type: "tx_sdo",  label: "bridge_5_reference_load_tx",             std_name: "bridge_reference_load",             module: 15,  domain: 0 }

        # Resistor bridge 6
        { name: "bridge_6_gap",                type: "tx_pdo",  label: "bridge_6_gap",                std_name: "bridge_gap",                 module: 16,  domain: 0 }
        { name: "bridge_6_overrange",          type: "tx_pdo",  label: "bridge_6_overrange",          std_name: "bridge_overrange",           module: 16,  domain: 0 }
        { name: "bridge_6_data_invalid",       type: "tx_pdo",  label: "bridge_6_data_invalid",       std_name: "bridge_data_invalid",        module: 16,  domain: 0 }
        { name: "bridge_6_error",              type: "tx_pdo",  label: "bridge_6_error",              std_name: "bridge_error",               module: 16,  domain: 0 }
        { name: "bridge_6_calibrating",        type: "tx_pdo",  label: "bridge_6_calibrating",        std_name: "bridge_calibrating",         module: 16,  domain: 0 }
        { name: "bridge_6_steady_state",       type: "tx_pdo",  label: "bridge_6_steady_state",       std_name: "bridge_steady_state",        module: 16,  domain: 0 }
        { name: "bridge_6_sync_error",         type: "tx_pdo",  label: "bridge_6_sync_error",         std_name: "bridge_sync_error",          module: 16,  domain: 0 }
        { name: "bridge_6_toggle",             type: "tx_pdo",  label: "bridge_6_toggle",             std_name: "bridge_toggle",              module: 16,  domain: 0 }
        { name: "bridge_6_int_value",          type: "tx_pdo",  label: "bridge_6_int_value",          std_name: "bridge_int_value",           module: 16,  domain: 0 }
        { name: "bridge_6_real_value",         type: "tx_pdo",  label: "bridge_6_real_value",         std_name: "bridge_real_value",          module: 16,  domain: 0 }
        { name: "bridge_6_start_calibration",  type: "rx_pdo",  label: "bridge_6_start_calibration",  std_name: "bridge_start_calibration",   module: 16,  domain: 0 }
        { name: "bridge_6_disable_calibration",type: "rx_pdo",  label: "bridge_6_disable_calibration",std_name: "bridge_disable_calibration", module: 16,  domain: 0 }
        { name: "bridge_6_input_freeze",       type: "rx_pdo",  label: "bridge_6_input_freeze",       std_name: "bridge_input_freeze",        module: 16,  domain: 0 }
        { name: "bridge_6_sample_mode",        type: "rx_pdo",  label: "bridge_6_sample_mode",        std_name: "bridge_sample_mode",         module: 16,  domain: 0 }
        { name: "bridge_6_tara",               type: "rx_pdo",  label: "bridge_6_tara",               std_name: "bridge_tara",                module: 16,  domain: 0 }

        { name: "bridge_6_mode0_enable_filter_rx",        type: "rx_sdo",  label: "bridge_6_mode0_enable_filter_rx",        std_name: "bridge_mode0_enable_filter",        module: 16,  domain: 0 }
        { name: "bridge_6_mode1_enable_filter_rx",        type: "rx_sdo",  label: "bridge_6_mode1_enable_filter_rx",        std_name: "bridge_mode1_enable_filter",        module: 16,  domain: 0 }
        { name: "bridge_6_mode0_enable_averager_rx",      type: "rx_sdo",  label: "bridge_6_mode0_enable_averager_rx",      std_name: "bridge_mode0_enable_averager",      module: 16,  domain: 0 }
        { name: "bridge_6_mode1_enable_averager_rx",      type: "rx_sdo",  label: "bridge_6_mode1_enable_averager_rx",      std_name: "bridge_mode1_enable_averager",      module: 16,  domain: 0 }
        { name: "bridge_6_mode0_filter_settings_rx",      type: "rx_sdo",  label: "bridge_6_mode0_filter_settings_rx",      std_name: "bridge_mode0_filter_settings",      module: 16,  domain: 0 }
        { name: "bridge_6_mode1_filter_settings_rx",      type: "rx_sdo",  label: "bridge_6_mode1_filter_settings_rx",      std_name: "bridge_mode1_filter_settings",      module: 16,  domain: 0 }
        { name: "bridge_6_dynamic_filter_change_time_rx", type: "rx_sdo",  label: "bridge_6_dynamic_filter_change_time_rx", std_name: "bridge_dynamic_filter_change_time", module: 16,  domain: 0 }
        { name: "bridge_6_dynamic_filter_delta_rx",       type: "rx_sdo",  label: "bridge_6_dynamic_filter_delta_rx",       std_name: "bridge_dynamic_filter_delta",       module: 16,  domain: 0 }
        { name: "bridge_6_filter_settings_rx",            type: "rx_sdo",  label: "bridge_6_filter_settings_rx",            std_name: "bridge_filter_settings",            module: 16,  domain: 0 }
        { name: "bridge_6_gain_rx",                       type: "rx_sdo",  label: "bridge_6_gain_rx",                       std_name: "bridge_gain",                       module: 16,  domain: 0 }
        { name: "bridge_6_tara_float_rx",                 type: "rx_sdo",  label: "bridge_6_tara_float_rx",                 std_name: "bridge_tara_float",                 module: 16,  domain: 0 }
        { name: "bridge_6_rated_output_rx",               type: "rx_sdo",  label: "bridge_6_rated_output_rx",               std_name: "bridge_rated_output",               module: 16,  domain: 0 }
        { name: "bridge_6_nominal_load_rx",               type: "rx_sdo",  label: "bridge_6_nominal_load_rx",               std_name: "bridge_nominal_load",               module: 16,  domain: 0 }
        { name: "bridge_6_filter_zero_balance_rx",        type: "rx_sdo",  label: "bridge_6_filter_zero_balance_rx",        std_name: "bridge_filter_zero_balance",        module: 16,  domain: 0 }
        { name: "bridge_6_gravity_of_earth_rx",           type: "rx_sdo",  label: "bridge_6_gravity_of_earth_rx",           std_name: "bridge_gravity_of_earth",           module: 16,  domain: 0 }
        { name: "bridge_6_scale_factor_rx",               type: "rx_sdo",  label: "bridge_6_scale_factor_rx",               std_name: "bridge_scale_factor",               module: 16,  domain: 0 }
        { name: "bridge_6_reference_load_rx",             type: "rx_sdo",  label: "bridge_6_reference_load_rx",             std_name: "bridge_reference_load",             module: 16,  domain: 0 }

        { name: "bridge_6_serial_number_tx",              type: "tx_sdo",  label: "bridge_6_serial_number_tx",              std_name: "bridge_serial_number",              module: 16,  domain: 0 }
        { name: "bridge_6_mode0_enable_filter_tx",        type: "tx_sdo",  label: "bridge_6_mode0_enable_filter_tx",        std_name: "bridge_mode0_enable_filter",        module: 16,  domain: 0 }
        { name: "bridge_6_mode1_enable_filter_tx",        type: "tx_sdo",  label: "bridge_6_mode1_enable_filter_tx",        std_name: "bridge_mode1_enable_filter",        module: 16,  domain: 0 }
        { name: "bridge_6_mode0_enable_averager_tx",      type: "tx_sdo",  label: "bridge_6_mode0_enable_averager_tx",      std_name: "bridge_mode0_enable_averager",      module: 16,  domain: 0 }
        { name: "bridge_6_mode1_enable_averager_tx",      type: "tx_sdo",  label: "bridge_6_mode1_enable_averager_tx",      std_name: "bridge_mode1_enable_averager",      module: 16,  domain: 0 }
        { name: "bridge_6_mode0_filter_settings_tx",      type: "tx_sdo",  label: "bridge_6_mode0_filter_settings_tx",      std_name: "bridge_mode0_filter_settings",      module: 16,  domain: 0 }
        { name: "bridge_6_mode1_filter_settings_tx",      type: "tx_sdo",  label: "bridge_6_mode1_filter_settings_tx",      std_name: "bridge_mode1_filter_settings",      module: 16,  domain: 0 }
        { name: "bridge_6_dynamic_filter_change_time_tx", type: "tx_sdo",  label: "bridge_6_dynamic_filter_change_time_tx", std_name: "bridge_dynamic_filter_change_time", module: 16,  domain: 0 }
        { name: "bridge_6_dynamic_filter_delta_tx",       type: "tx_sdo",  label: "bridge_6_dynamic_filter_delta_tx",       std_name: "bridge_dynamic_filter_delta",       module: 16,  domain: 0 }
        { name: "bridge_6_filter_settings_tx",            type: "tx_sdo",  label: "bridge_6_filter_settings_tx",            std_name: "bridge_filter_settings",            module: 16,  domain: 0 }
        { name: "bridge_6_gain_tx",                       type: "tx_sdo",  label: "bridge_6_gain_tx",                       std_name: "bridge_gain",                       module: 16,  domain: 0 }
        { name: "bridge_6_tara_float_tx",                 type: "tx_sdo",  label: "bridge_6_tara_float_tx",                 std_name: "bridge_tara_float",                 module: 16,  domain: 0 }
        { name: "bridge_6_rated_output_tx",               type: "tx_sdo",  label: "bridge_6_rated_output_tx",               std_name: "bridge_rated_output",               module: 16,  domain: 0 }
        { name: "bridge_6_nominal_load_tx",               type: "tx_sdo",  label: "bridge_6_nominal_load_tx",               std_name: "bridge_nominal_load",               module: 16,  domain: 0 }
        { name: "bridge_6_filter_zero_balance_tx",        type: "tx_sdo",  label: "bridge_6_filter_zero_balance_tx",        std_name: "bridge_filter_zero_balance",        module: 16,  domain: 0 }
        { name: "bridge_6_gravity_of_earth_tx",           type: "tx_sdo",  label: "bridge_6_gravity_of_earth_tx",           std_name: "bridge_gravity_of_earth",           module: 16,  domain: 0 }
        { name: "bridge_6_scale_factor_tx",               type: "tx_sdo",  label: "bridge_6_scale_factor_tx",               std_name: "bridge_scale_factor",               module: 16,  domain: 0 }
        { name: "bridge_6_reference_load_tx",             type: "tx_sdo",  label: "bridge_6_reference_load_tx",             std_name: "bridge_reference_load",             module: 16,  domain: 0 }
    ]


    catalog: [
        { #Slave 0
            product_name: "EK1100",
            vendor_id: 2,
            product_code: 0x101a3052,
            revision_id: 0x03fc0000,
            objs: []
        }
        { #Slave 1
            product_name: "EL1809",
            vendor_id: 2,
            product_code: 0x07113052,
            revision_id: 0x00120000,
            objs: [
                {name: "digital_in_1_value",          index: 0x6000, sub_index: 0x1, bit: 0}
                {name: "digital_in_2_value",          index: 0x6010, sub_index: 0x1, bit: 0}
                {name: "digital_in_3_value",          index: 0x6020, sub_index: 0x1, bit: 0}
                {name: "digital_in_4_value",          index: 0x6030, sub_index: 0x1, bit: 0}
                {name: "digital_in_5_value",          index: 0x6040, sub_index: 0x1, bit: 0}
                {name: "digital_in_6_value",          index: 0x6050, sub_index: 0x1, bit: 0}
                {name: "digital_in_7_value",          index: 0x6060, sub_index: 0x1, bit: 0}
                {name: "digital_in_8_value",          index: 0x6070, sub_index: 0x1, bit: 0}

                {name: "digital_in_9_value",          index: 0x6080, sub_index: 0x1, bit: 0}
                {name: "digital_in_10_value",          index: 0x6090, sub_index: 0x1, bit: 0}
                {name: "digital_in_11_value",          index: 0x60a0, sub_index: 0x1, bit: 0}
                {name: "digital_in_12_value",          index: 0x60b0, sub_index: 0x1, bit: 0}
                {name: "digital_in_13_value",          index: 0x60c0, sub_index: 0x1, bit: 0}
                {name: "digital_in_14_value",          index: 0x60d0, sub_index: 0x1, bit: 0}
                {name: "digital_in_15_value",          index: 0x60e0, sub_index: 0x1, bit: 0}
                {name: "digital_in_16_value",          index: 0x60f0, sub_index: 0x1, bit: 0}
            ]
        }
        { #Slave 2
            product_name: "EL2008",
            vendor_id: 2,
            product_code: 0x07d83052,
            revision_id: 0x00120000,
            objs: [
                {name: "digital_out_1_value",          index: 0x7000, sub_index: 0x1, bit: 0}
                {name: "digital_out_2_value",          index: 0x7010, sub_index: 0x1, bit: 0}
                {name: "digital_out_3_value",          index: 0x7020, sub_index: 0x1, bit: 0}
                {name: "digital_out_4_value",          index: 0x7030, sub_index: 0x1, bit: 0}
                {name: "digital_out_5_value",          index: 0x7040, sub_index: 0x1, bit: 0}
                {name: "digital_out_6_value",          index: 0x7050, sub_index: 0x1, bit: 0}
                {name: "digital_out_7_value",          index: 0x7060, sub_index: 0x1, bit: 0}
                {name: "digital_out_8_value",          index: 0x7070, sub_index: 0x1, bit: 0}
            ]
        }
        { #Slave 3
            product_name: "EL3124",
            vendor_id: 2,
            product_code: 0x0c343052,
            revision_id: 0x00140000,
            objs: [
                {name: "analog_in_1_underrange",     index: 0x6000, sub_index: 0x1, bit: 0}
                {name: "analog_in_1_overrange",      index: 0x6000, sub_index: 0x2, bit: 0}
                {name: "analog_in_1_limit_1",        index: 0x6000, sub_index: 0x3, bit: 0}
                {name: "analog_in_1_limit_2",        index: 0x6000, sub_index: 0x5, bit: 0}
                {name: "analog_in_1_error",          index: 0x6000, sub_index: 0x7, bit: 0}
                {name: "analog_in_1_sync_error",     index: 0x6000, sub_index: 0xe, bit: 0}
                {name: "analog_in_1_tx_pdo_state",   index: 0x6000, sub_index: 0xf, bit: 0}
                {name: "analog_in_1_tx_pdo_toggle",  index: 0x6000, sub_index: 0x10, bit: 0}
                {name: "analog_in_1_value",          index: 0x6000, sub_index: 0x11, bit: 0}

                {name: "analog_in_2_value",          index: 0x6010, sub_index: 0x11, bit: 0}
            ]
        }
        { #Slave 4
            product_name: "EL4122",
            vendor_id: 2,
            product_code: 0x101a3052,
            revision_id: 0x03fc0000,
            objs: [
                {name: "analog_out_1_value",          index: 0x3001, sub_index: 0x1, bit: 0}
                {name: "analog_out_2_value",          index: 0x3002, sub_index: 0x1, bit: 0}
            ]
        }
        { #Slaves 5-6-7
            product_name: "EL5002",
            vendor_id: 2,
            product_code: 0x138a3052,
            revision_id: 0x00140000,
            objs: [
                {name: "ssi_in_1_data_error",    index: 0x6000, sub_index: 0x1, bit: 0}
                {name: "ssi_in_1_frame_error",   index: 0x6000, sub_index: 0x2, bit: 0}
                {name: "ssi_in_1_power_error",   index: 0x6000, sub_index: 0x3, bit: 0}
                {name: "ssi_in_1_data_mismatch", index: 0x6000, sub_index: 0x4, bit: 0}
                {name: "ssi_in_1_sync_error",    index: 0x6000, sub_index: 0xe, bit: 0}
                {name: "ssi_in_1_value",         index: 0x6000, sub_index: 0x11, bit: 0}
                {name: "ssi_in_2_data_error",    index: 0x6010, sub_index: 0x1, bit: 0}
                {name: "ssi_in_2_frame_error",   index: 0x6010, sub_index: 0x2, bit: 0}
                {name: "ssi_in_2_power_error",   index: 0x6010, sub_index: 0x3, bit: 0}
                {name: "ssi_in_2_data_mismatch", index: 0x6010, sub_index: 0x4, bit: 0}
                {name: "ssi_in_2_sync_error",    index: 0x6010, sub_index: 0xe, bit: 0}
                {name: "ssi_in_2_value",         index: 0x6010, sub_index: 0x11, bit: 0}
            ]
        }
        { #Slaves 8-11-14
            product_name: "EL9510",
            vendor_id: 2,
            product_code: 0x25263052,
            revision_id: 0x00120000,
            objs: [
                {name: "power_on",          index: 0x6000, sub_index: 0x1, bit: 0}
                {name: "power_overload",    index: 0x6000, sub_index: 0x2, bit: 0}
            ]
        }
        { #Slaves 9-10-12-13-15-16
            product_name: "EL3356-10",
            vendor_id: 2,
            product_code: 0x0d1c3052,
            revision_id: 0x0019000a,
            objs: [
                {name: "bridge_gap",          index: 0x6000, sub_index: 0x0, bit: 0}
                {name: "bridge_overrange",    index: 0x6000, sub_index: 0x2, bit: 0}
                {name: "bridge_data_invalid", index: 0x6000, sub_index: 0x4, bit: 0}
                {name: "bridge_error",        index: 0x6000, sub_index: 0x7, bit: 0}
                {name: "bridge_calibrating",  index: 0x6000, sub_index: 0x8, bit: 0}
                {name: "bridge_steady_state", index: 0x6000, sub_index: 0x9, bit: 0}
                {name: "bridge_sync_error",   index: 0x6000, sub_index: 0xe, bit: 0}
                {name: "bridge_toggle",       index: 0x6000, sub_index: 0x10, bit: 0}
                {name: "bridge_int_value",    index: 0x6000, sub_index: 0x11, bit: 0}
                {name: "bridge_real_value",   index: 0x6000, sub_index: 0x12, bit: 0}
                {name: "bridge_start_calibration",          index: 0x7000, sub_index: 0x1, bit: 0}
                {name: "bridge_disable_calibration",        index: 0x7000, sub_index: 0x2, bit: 0}
                {name: "bridge_input_freeze",               index: 0x7000, sub_index: 0x3, bit: 0}
                {name: "bridge_sample_mode",                index: 0x7000, sub_index: 0x4, bit: 0}
                {name: "bridge_tara",                       index: 0x7000, sub_index: 0x5, bit: 0}
                {name: "bridge_filter_frequency",           index: 0x7000, sub_index: 0x11, bit: 0}

                {name: "bridge_serial_number",              index: 0x1018, sub_index: 0x04, bit: 0}
                {name: "bridge_mode0_enable_filter",        index: 0x8000, sub_index: 0x01, bit: 0}
                {name: "bridge_mode1_enable_filter",        index: 0x8000, sub_index: 0x02, bit: 0}
                {name: "bridge_mode0_enable_averager",      index: 0x8000, sub_index: 0x03, bit: 0}
                {name: "bridge_mode1_enable_averager",      index: 0x8000, sub_index: 0x04, bit: 0}
                {name: "bridge_mode0_filter_settings",      index: 0x8000, sub_index: 0x11, bit: 0}
                {name: "bridge_mode1_filter_settings",      index: 0x8000, sub_index: 0x12, bit: 0}
                {name: "bridge_dynamic_filter_change_time", index: 0x8000, sub_index: 0x13, bit: 0}
                {name: "bridge_dynamic_filter_delta",       index: 0x8000, sub_index: 0x14, bit: 0}
                {name: "bridge_filter_settings",            index: 0x8010, sub_index: 0x15, bit: 0}
                {name: "bridge_gain",                       index: 0x8000, sub_index: 0x21, bit: 0}
                {name: "bridge_tara_float",                 index: 0x8000, sub_index: 0x22, bit: 0}
                {name: "bridge_rated_output",               index: 0x8000, sub_index: 0x23, bit: 0}
                {name: "bridge_nominal_load",               index: 0x8000, sub_index: 0x24, bit: 0}
                {name: "bridge_filter_zero_balance",        index: 0x8000, sub_index: 0x25, bit: 0}
                {name: "bridge_gravity_of_earth",           index: 0x8000, sub_index: 0x26, bit: 0}
                {name: "bridge_scale_factor",               index: 0x8000, sub_index: 0x27, bit: 0}
                {name: "bridge_reference_load",             index: 0x8000, sub_index: 0x28, bit: 0}
            ]
        }
    ]
