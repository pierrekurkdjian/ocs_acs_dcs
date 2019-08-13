
FieldBus "acs_ctrl_fb",
    info:    "Main ACS EtherCAT bus"
    desc:    "Main ACS EtherCAT bus"

    masters: [
            { id: 0, rate: 1000 }
        ]

    domains: [
        { id: 0, master: 0,   rate: 1    }
        { id: 1, master: 0,   rate: 1000 }
    ]

    slaves: [
        { name: "coupler",           position: 0,  type: "EK1100" }
        { name: "digital_in",        position: 1,  type: "EL1809" }
        { name: "digital_out",       position: 2,  type: "EL2008" }
        { name: "analog_in",         position: 3,  type: "EL3124" }
        { name: "analog_out",        position: 4,  type: "EL4122" }
        { name: "ssi_encoder_1",     position: 5,  type: "EL5002" }
        { name: "ssi_encoder_2",     position: 6,  type: "EL5002" }
        { name: "ssi_encoder_3",     position: 7,  type: "EL5002" }
        { name: "power_supply_1",    position: 8,  type: "EL9510" }
        { name: "resistor_bridge_1", position: 9,  type: "EL3356-10" }
        { name: "resistor_bridge_2", position: 10, type: "EL3356-10" }
        { name: "power_supply_2",    position: 11, type: "EL9510" }
        { name: "resistor_bridge_3", position: 12, type: "EL3356-10" }
        { name: "resistor_bridge_4", position: 13, type: "EL3356-10" }
        { name: "power_supply_3",    position: 14, type: "EL9510" }
        { name: "resistor_bridge_5", position: 15, type: "EL3356-10" }
        { name: "resistor_bridge_6", position: 16, type: "EL3356-10" }
    ]


    data_objects: [

        # Digital communication
        { name: "digital_in_1_value",    type: "tx_pdo", label: "digital_in_1_value",    std_name: "digital_in_1_value",    module: 1,  domain: 0 }
        { name: "digital_in_2_value",    type: "tx_pdo", label: "digital_in_2_value",    std_name: "digital_in_2_value",    module: 1,  domain: 0 }
        { name: "digital_in_3_value",    type: "tx_pdo", label: "digital_in_3_value",    std_name: "digital_in_3_value",    module: 1,  domain: 0 }
        { name: "digital_in_4_value",    type: "tx_pdo", label: "digital_in_4_value",    std_name: "digital_in_4_value",    module: 1,  domain: 0 }
        { name: "digital_in_5_value",    type: "tx_pdo", label: "digital_in_5_value",    std_name: "digital_in_5_value",    module: 1,  domain: 0 }
        { name: "digital_in_6_value",    type: "tx_pdo", label: "digital_in_6_value",    std_name: "digital_in_6_value",    module: 1,  domain: 0 }
        { name: "digital_in_7_value",    type: "tx_pdo", label: "digital_in_7_value",    std_name: "digital_in_7_value",    module: 1,  domain: 0 }
        { name: "digital_in_8_value",    type: "tx_pdo", label: "digital_in_8_value",    std_name: "digital_in_8_value",    module: 1,  domain: 0 }

        { name: "digital_out_1_value",   type: "rx_pdo", label: "digital_out_1_value",   std_name: "digital_out_1_value",   module: 2,  domain: 0 }
        { name: "digital_out_2_value",   type: "rx_pdo", label: "digital_out_2_value",   std_name: "digital_out_2_value",   module: 2,  domain: 0 }
        { name: "digital_out_3_value",   type: "rx_pdo", label: "digital_out_3_value",   std_name: "digital_out_3_value",   module: 2,  domain: 0 }
        { name: "digital_out_4_value",   type: "rx_pdo", label: "digital_out_4_value",   std_name: "digital_out_4_value",   module: 2,  domain: 0 }
        { name: "digital_out_5_value",   type: "rx_pdo", label: "digital_out_5_value",   std_name: "digital_out_5_value",   module: 2,  domain: 0 }
        { name: "digital_out_6_value",   type: "rx_pdo", label: "digital_out_6_value",   std_name: "digital_out_6_value",   module: 2,  domain: 0 }
        { name: "digital_out_7_value",   type: "rx_pdo", label: "digital_out_7_value",   std_name: "digital_out_7_value",   module: 2,  domain: 0 }
        { name: "digital_out_8_value",   type: "rx_pdo", label: "digital_out_8_value",   std_name: "digital_out_8_value",   module: 2,  domain: 0 }


        # Analog communication
        { name: "analog_in_1_value",    type: "tx_pdo",  label: "analog_in_1_value",     std_name: "analog_in_1_value",     module: 3,  domain: 0 }
        { name: "analog_in_2_value",    type: "tx_pdo",  label: "analog_in_2_value",     std_name: "analog_in_2_value",     module: 3,  domain: 0 }

        { name: "analog_out_1_value",   type: "rx_pdo",  label: "analog_out_1_value",    std_name: "analog_out_1_value",    module: 4,  domain: 0 }
        { name: "analog_out_2_value",   type: "rx_pdo",  label: "analog_out_2_value",    std_name: "analog_out_2_value",    module: 4,  domain: 0 }


        # SSI encoder 1


        # SSI encoder 2


        # SSI encoder 3


        # Power supply 1
        { name: "power_1_on",                   type: "tx_pdo",  label: "power_1_on",                   std_name: "power_on",            module: 8, domain: 0 }
        { name: "power_1_overload",             type: "tx_pdo",  label: "power_1_overload",             std_name: "power_overload",      module: 8, domain: 0 }

        # Load cell 1
        { name: "bridge_1_overrange",           type: "tx_pdo",  label: "bridge_1_overrange",           std_name: "bridge_overrange",    module: 9,  domain: 0 }
        { name: "bridge_1_data_invalid",        type: "tx_pdo",  label: "bridge_1_data_invalid",        std_name: "bridge_data_invalid", module: 9,  domain: 0 }
        { name: "bridge_1_error",               type: "tx_pdo",  label: "bridge_1_error",               std_name: "bridge_error",        module: 9,  domain: 0 }
        { name: "bridge_1_calibrating",         type: "tx_pdo",  label: "bridge_1_calibrating",         std_name: "bridge_calibrating",  module: 9,  domain: 0 }
        { name: "bridge_1_steady_state",        type: "tx_pdo",  label: "bridge_1_steady_state",        std_name: "bridge_steady_state", module: 9,  domain: 0 }
        { name: "bridge_1_sync_error",          type: "tx_pdo",  label: "bridge_1_sync_error",          std_name: "bridge_sync_error",   module: 9,  domain: 0 }
        { name: "bridge_1_toggle",              type: "tx_pdo",  label: "bridge_1_toggle",              std_name: "bridge_toggle",       module: 9,  domain: 0 }
        { name: "bridge_1_int_value",           type: "tx_pdo",  label: "bridge_1_int_value",           std_name: "bridge_int_value",           module: 16,  domain: 0 }
        { name: "bridge_1_real_value",          type: "tx_pdo",  label: "bridge_1_real_value",          std_name: "bridge_real_value",          module: 16,  domain: 0 }

        { name: "bridge_1_start_calibration",   type: "rx_pdo",  label: "bridge_1_start_calibration",   std_name: "bridge_start_calibration",   module: 9,  domain: 0 }
        { name: "bridge_1_disable_calibration", type: "rx_pdo",  label: "bridge_1_disable_calibration", std_name: "bridge_disable_calibration", module: 9,  domain: 0 }
        { name: "bridge_1_input_freeze",        type: "rx_pdo",  label: "bridge_1_input_freeze",        std_name: "bridge_input_freeze",        module: 9,  domain: 0 }
        { name: "bridge_1_sample_mode",         type: "rx_pdo",  label: "bridge_1_sample_mode",         std_name: "bridge_sample_mode",         module: 9,  domain: 0 }
        { name: "bridge_1_tara",                type: "rx_pdo",  label: "bridge_1_tara",                std_name: "bridge_tara",                module: 9,  domain: 0 }

        # Load cell 2
        { name: "bridge_2_overrange",           type: "tx_pdo",  label: "bridge_2_overrange",           std_name: "bridge_overrange",    module: 10,  domain: 0 }
        { name: "bridge_2_data_invalid",        type: "tx_pdo",  label: "bridge_2_data_invalid",        std_name: "bridge_data_invalid", module: 10,  domain: 0 }
        { name: "bridge_2_error",               type: "tx_pdo",  label: "bridge_2_error",               std_name: "bridge_error",        module: 10,  domain: 0 }
        { name: "bridge_2_calibrating",         type: "tx_pdo",  label: "bridge_2_calibrating",         std_name: "bridge_calibrating",  module: 10,  domain: 0 }
        { name: "bridge_2_steady_state",        type: "tx_pdo",  label: "bridge_2_steady_state",        std_name: "bridge_steady_state", module: 10,  domain: 0 }
        { name: "bridge_2_sync_error",          type: "tx_pdo",  label: "bridge_2_sync_error",          std_name: "bridge_sync_error",   module: 10,  domain: 0 }
        { name: "bridge_2_toggle",              type: "tx_pdo",  label: "bridge_2_toggle",              std_name: "bridge_toggle",       module: 10,  domain: 0 }
        { name: "bridge_2_int_value",           type: "tx_pdo",  label: "bridge_2_int_value",           std_name: "bridge_int_value",           module: 16,  domain: 0 }
        { name: "bridge_2_real_value",          type: "tx_pdo",  label: "bridge_2_real_value",          std_name: "bridge_real_value",          module: 16,  domain: 0 }

        { name: "bridge_2_start_calibration",   type: "rx_pdo",  label: "bridge_2_start_calibration",   std_name: "bridge_start_calibration",   module: 10,  domain: 0 }
        { name: "bridge_2_disable_calibration", type: "rx_pdo",  label: "bridge_2_disable_calibration", std_name: "bridge_disable_calibration", module: 10,  domain: 0 }
        { name: "bridge_2_input_freeze",        type: "rx_pdo",  label: "bridge_2_input_freeze",        std_name: "bridge_input_freeze",        module: 10,  domain: 0 }
        { name: "bridge_2_sample_mode",         type: "rx_pdo",  label: "bridge_2_sample_mode",         std_name: "bridge_sample_mode",         module: 10,  domain: 0 }
        { name: "bridge_2_tara",                type: "rx_pdo",  label: "bridge_2_tara",                std_name: "bridge_tara",                module: 10,  domain: 0 }


        # Power supply 2
        { name: "power_2_on",                   type: "tx_pdo",  label: "power_2_on",                   std_name: "power_on",        module: 11, domain: 0 }
        { name: "power_2_overload",             type: "tx_pdo",  label: "power_2_overload",             std_name: "power_overload",  module: 11, domain: 0 }

        # Load cell 4
        { name: "bridge_3_overrange",           type: "tx_pdo",  label: "bridge_3_overrange",           std_name: "bridge_overrange",    module: 12,  domain: 0 }
        { name: "bridge_3_data_invalid",        type: "tx_pdo",  label: "bridge_3_data_invalid",        std_name: "bridge_data_invalid", module: 12,  domain: 0 }
        { name: "bridge_3_error",               type: "tx_pdo",  label: "bridge_3_error",               std_name: "bridge_error",        module: 12,  domain: 0 }
        { name: "bridge_3_calibrating",         type: "tx_pdo",  label: "bridge_3_calibrating",         std_name: "bridge_calibrating",  module: 12,  domain: 0 }
        { name: "bridge_3_steady_state",        type: "tx_pdo",  label: "bridge_3_steady_state",        std_name: "bridge_steady_state", module: 12,  domain: 0 }
        { name: "bridge_3_sync_error",          type: "tx_pdo",  label: "bridge_3_sync_error",          std_name: "bridge_sync_error",   module: 12,  domain: 0 }
        { name: "bridge_3_toggle",              type: "tx_pdo",  label: "bridge_3_toggle",              std_name: "bridge_toggle",       module: 12,  domain: 0 }
        { name: "bridge_3_int_value",           type: "tx_pdo",  label: "bridge_3_int_value",           std_name: "bridge_int_value",           module: 16,  domain: 0 }
        { name: "bridge_3_real_value",          type: "tx_pdo",  label: "bridge_3_real_value",          std_name: "bridge_real_value",          module: 16,  domain: 0 }

        { name: "bridge_3_start_calibration",   type: "rx_pdo",  label: "bridge_3_start_calibration",   std_name: "bridge_start_calibration",   module: 12,  domain: 0 }
        { name: "bridge_3_disable_calibration", type: "rx_pdo",  label: "bridge_3_disable_calibration", std_name: "bridge_disable_calibration", module: 12,  domain: 0 }
        { name: "bridge_3_input_freeze",        type: "rx_pdo",  label: "bridge_3_input_freeze",        std_name: "bridge_input_freeze",        module: 12,  domain: 0 }
        { name: "bridge_3_sample_mode",         type: "rx_pdo",  label: "bridge_3_sample_mode",         std_name: "bridge_sample_mode",         module: 12,  domain: 0 }
        { name: "bridge_3_tara",                type: "rx_pdo",  label: "bridge_3_tara",                std_name: "bridge_tara",                module: 12,  domain: 0 }

        # Load cell 4
        { name: "bridge_4_overrange",           type: "tx_pdo",  label: "bridge_4_overrange",           std_name: "bridge_overrange",    module: 13,  domain: 0 }
        { name: "bridge_4_data_invalid",        type: "tx_pdo",  label: "bridge_4_data_invalid",        std_name: "bridge_data_invalid", module: 13,  domain: 0 }
        { name: "bridge_4_error",               type: "tx_pdo",  label: "bridge_4_error",               std_name: "bridge_error",        module: 13,  domain: 0 }
        { name: "bridge_4_calibrating",         type: "tx_pdo",  label: "bridge_4_calibrating",         std_name: "bridge_calibrating",  module: 13,  domain: 0 }
        { name: "bridge_4_steady_state",        type: "tx_pdo",  label: "bridge_4_steady_state",        std_name: "bridge_steady_state", module: 13,  domain: 0 }
        { name: "bridge_4_sync_error",          type: "tx_pdo",  label: "bridge_4_sync_error",          std_name: "bridge_sync_error",   module: 13,  domain: 0 }
        { name: "bridge_4_toggle",              type: "tx_pdo",  label: "bridge_4_toggle",              std_name: "bridge_toggle",       module: 13,  domain: 0 }
        { name: "bridge_4_int_value",           type: "tx_pdo",  label: "bridge_4_int_value",           std_name: "bridge_int_value",           module: 16,  domain: 0 }
        { name: "bridge_4_real_value",          type: "tx_pdo",  label: "bridge_4_real_value",          std_name: "bridge_real_value",          module: 16,  domain: 0 }

        { name: "bridge_4_start_calibration",   type: "rx_pdo",  label: "bridge_4_start_calibration",   std_name: "bridge_start_calibration",   module: 13,  domain: 0 }
        { name: "bridge_4_disable_calibration", type: "rx_pdo",  label: "bridge_4_disable_calibration", std_name: "bridge_disable_calibration", module: 13,  domain: 0 }
        { name: "bridge_4_input_freeze",        type: "rx_pdo",  label: "bridge_4_input_freeze",        std_name: "bridge_input_freeze",        module: 13,  domain: 0 }
        { name: "bridge_4_sample_mode",         type: "rx_pdo",  label: "bridge_4_sample_mode",         std_name: "bridge_sample_mode",         module: 13,  domain: 0 }
        { name: "bridge_4_tara",                type: "rx_pdo",  label: "bridge_4_tara",                std_name: "bridge_tara",                module: 13,  domain: 0 }


        # Power supply 3
        { name: "power_3_on",                   type: "tx_pdo",  label: "power_3_on",                   std_name: "power_on",        module: 14, domain: 0 }
        { name: "power_3_overload",             type: "tx_pdo",  label: "power_3_overload",             std_name: "power_overload",  module: 14, domain: 0 }

        # Load cell 5
        { name: "bridge_5_overrange",           type: "tx_pdo",  label: "bridge_5_overrange",           std_name: "bridge_overrange",           module: 15,  domain: 0 }
        { name: "bridge_5_data_invalid",        type: "tx_pdo",  label: "bridge_5_data_invalid",        std_name: "bridge_data_invalid",        module: 15,  domain: 0 }
        { name: "bridge_5_error",               type: "tx_pdo",  label: "bridge_5_error",               std_name: "bridge_error",               module: 15,  domain: 0 }
        { name: "bridge_5_calibrating",         type: "tx_pdo",  label: "bridge_5_calibrating",         std_name: "bridge_calibrating",         module: 15,  domain: 0 }
        { name: "bridge_5_steady_state",        type: "tx_pdo",  label: "bridge_5_steady_state",        std_name: "bridge_steady_state",        module: 15,  domain: 0 }
        { name: "bridge_5_sync_error",          type: "tx_pdo",  label: "bridge_5_sync_error",          std_name: "bridge_sync_error",          module: 15,  domain: 0 }
        { name: "bridge_5_toggle",              type: "tx_pdo",  label: "bridge_5_toggle",              std_name: "bridge_toggle",              module: 15,  domain: 0 }
        { name: "bridge_5_int_value",           type: "tx_pdo",  label: "bridge_5_int_value",           std_name: "bridge_int_value",           module: 16,  domain: 0 }
        { name: "bridge_5_real_value",          type: "tx_pdo",  label: "bridge_5_real_value",          std_name: "bridge_real_value",          module: 16,  domain: 0 }

        { name: "bridge_5_start_calibration",   type: "rx_pdo",  label: "bridge_5_start_calibration",   std_name: "bridge_start_calibration",   module: 15,  domain: 0 }
        { name: "bridge_5_disable_calibration", type: "rx_pdo",  label: "bridge_5_disable_calibration", std_name: "bridge_disable_calibration", module: 15,  domain: 0 }
        { name: "bridge_5_input_freeze",        type: "rx_pdo",  label: "bridge_5_input_freeze",        std_name: "bridge_input_freeze",        module: 15,  domain: 0 }
        { name: "bridge_5_sample_mode",         type: "rx_pdo",  label: "bridge_5_sample_mode",         std_name: "bridge_sample_mode",         module: 15,  domain: 0 }
        { name: "bridge_5_tara",                type: "rx_pdo",  label: "bridge_5_tara",                std_name: "bridge_tara",                module: 15,  domain: 0 }

        # Load cell 6
        { name: "bridge_6_overrange",           type: "tx_pdo",  label: "bridge_6_overrange",           std_name: "bridge_overrange",           module: 16,  domain: 0 }
        { name: "bridge_6_data_invalid",        type: "tx_pdo",  label: "bridge_6_data_invalid",        std_name: "bridge_data_invalid",        module: 16,  domain: 0 }
        { name: "bridge_6_error",               type: "tx_pdo",  label: "bridge_6_error",               std_name: "bridge_error",               module: 16,  domain: 0 }
        { name: "bridge_6_calibrating",         type: "tx_pdo",  label: "bridge_6_calibrating",         std_name: "bridge_calibrating",         module: 16,  domain: 0 }
        { name: "bridge_6_steady_state",        type: "tx_pdo",  label: "bridge_6_steady_state",        std_name: "bridge_steady_state",        module: 16,  domain: 0 }
        { name: "bridge_6_sync_error",          type: "tx_pdo",  label: "bridge_6_sync_error",          std_name: "bridge_sync_error",          module: 16,  domain: 0 }
        { name: "bridge_6_toggle",              type: "tx_pdo",  label: "bridge_6_toggle",              std_name: "bridge_toggle",              module: 16,  domain: 0 }
        { name: "bridge_6_int_value",          type: "tx_pdo",  label: "bridge_6_int_value",            std_name: "bridge_int_value",           module: 16,  domain: 0 }
        { name: "bridge_6_real_value",          type: "tx_pdo",  label: "bridge_6_real_value",          std_name: "bridge_real_value",          module: 16,  domain: 0 }

        { name: "bridge_6_start_calibration",   type: "rx_pdo",  label: "bridge_6_start_calibration",   std_name: "bridge_start_calibration",   module: 16,  domain: 0 }
        { name: "bridge_6_disable_calibration", type: "rx_pdo",  label: "bridge_6_disable_calibration", std_name: "bridge_disable_calibration", module: 16,  domain: 0 }
        { name: "bridge_6_input_freeze",        type: "rx_pdo",  label: "bridge_6_input_freeze",        std_name: "bridge_input_freeze",        module: 16,  domain: 0 }
        { name: "bridge_6_sample_mode",         type: "rx_pdo",  label: "bridge_6_sample_mode",         std_name: "bridge_sample_mode",         module: 16,  domain: 0 }
        { name: "bridge_6_tara",                type: "rx_pdo",  label: "bridge_6_tara",                std_name: "bridge_tara",                module: 16,  domain: 0 }

    ]
