module.exports =
    master: [
            { id: 0, rate: 1000 }
        ]

    domains: [
        { id: 0, master: 0,   rate_factor: 1    }
        { id: 1, master: 0,   rate_factor: 100 }
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

    pdo_mapping: [
        #{ pdo_name: "bridge_in_value",       direction: "input", index: 0x1a01, sub_index: 0x1, size: 32}
        { pdo_name: "bridge_real_value",       direction: "input", index: 0x1a02, sub_index: 0x1, size: 32}
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
        { name: "bridge_1_real_value",         type: "tx_pdo",  label: "bridge_1_real_value",         std_name: "bridge_real_value",          module: 9,  domain: 0 }
        { name: "bridge_1_start_calibration",  type: "rx_pdo",  label: "bridge_1_start_calibration",  std_name: "bridge_start_calibration",   module: 9,  domain: 0 }
        { name: "bridge_1_disable_calibration",type: "rx_pdo",  label: "bridge_1_disable_calibration",std_name: "bridge_disable_calibration", module: 9,  domain: 0 }
        { name: "bridge_1_input_freeze",       type: "rx_pdo",  label: "bridge_1_input_freeze",       std_name: "bridge_input_freeze",        module: 9,  domain: 0 }
        { name: "bridge_1_sample_mode",        type: "rx_pdo",  label: "bridge_1_sample_mode",        std_name: "bridge_sample_mode",         module: 9,  domain: 0 }
        { name: "bridge_1_tara",               type: "rx_pdo",  label: "bridge_1_tara",               std_name: "bridge_tara",                module: 9,  domain: 0 }

        # Resistor bridge 2
        { name: "bridge_2_gap",                type: "tx_pdo",  label: "bridge_2_gap",                std_name: "bridge_gap",                 module: 10,  domain: 0 }
        { name: "bridge_2_overrange",          type: "tx_pdo",  label: "bridge_2_overrange",          std_name: "bridge_overrange",           module: 10,  domain: 0 }
        { name: "bridge_2_data_invalid",       type: "tx_pdo",  label: "bridge_2_data_invalid",       std_name: "bridge_data_invalid",        module: 10,  domain: 0 }
        { name: "bridge_2_error",              type: "tx_pdo",  label: "bridge_2_error",              std_name: "bridge_error",               module: 10,  domain: 0 }
        { name: "bridge_2_calibrating",        type: "tx_pdo",  label: "bridge_2_calibrating",        std_name: "bridge_calibrating",         module: 10,  domain: 0 }
        { name: "bridge_2_steady_state",       type: "tx_pdo",  label: "bridge_2_steady_state",       std_name: "bridge_steady_state",        module: 10,  domain: 0 }
        { name: "bridge_2_sync_error",         type: "tx_pdo",  label: "bridge_2_sync_error",         std_name: "bridge_sync_error",          module: 10,  domain: 0 }
        { name: "bridge_2_toggle",             type: "tx_pdo",  label: "bridge_2_toggle",             std_name: "bridge_toggle",              module: 10,  domain: 0 }
        { name: "bridge_2_real_value",         type: "tx_pdo",  label: "bridge_2_real_value",         std_name: "bridge_real_value",          module: 10,  domain: 0 }
        { name: "bridge_2_start_calibration",  type: "rx_pdo",  label: "bridge_2_start_calibration",  std_name: "bridge_start_calibration",   module: 10,  domain: 0 }
        { name: "bridge_2_disable_calibration",type: "rx_pdo",  label: "bridge_2_disable_calibration",std_name: "bridge_disable_calibration", module: 10,  domain: 0 }
        { name: "bridge_2_input_freeze",       type: "rx_pdo",  label: "bridge_2_input_freeze",       std_name: "bridge_input_freeze",        module: 10,  domain: 0 }
        { name: "bridge_2_sample_mode",        type: "rx_pdo",  label: "bridge_2_sample_mode",        std_name: "bridge_sample_mode",         module: 10,  domain: 0 }
        { name: "bridge_2_tara",               type: "rx_pdo",  label: "bridge_2_tara",               std_name: "bridge_tara",                module: 10,  domain: 0 }

        # Resistor bridge 3
        { name: "bridge_3_gap",                type: "tx_pdo",  label: "bridge_3_gap",                std_name: "bridge_gap",                 module: 12,  domain: 0 }
        { name: "bridge_3_overrange",          type: "tx_pdo",  label: "bridge_3_overrange",          std_name: "bridge_overrange",           module: 12,  domain: 0 }
        { name: "bridge_3_data_invalid",       type: "tx_pdo",  label: "bridge_3_data_invalid",       std_name: "bridge_data_invalid",        module: 12,  domain: 0 }
        { name: "bridge_3_error",              type: "tx_pdo",  label: "bridge_3_error",              std_name: "bridge_error",               module: 12,  domain: 0 }
        { name: "bridge_3_calibrating",        type: "tx_pdo",  label: "bridge_3_calibrating",        std_name: "bridge_calibrating",         module: 12,  domain: 0 }
        { name: "bridge_3_steady_state",       type: "tx_pdo",  label: "bridge_3_steady_state",       std_name: "bridge_steady_state",        module: 12,  domain: 0 }
        { name: "bridge_3_sync_error",         type: "tx_pdo",  label: "bridge_3_sync_error",         std_name: "bridge_sync_error",          module: 12,  domain: 0 }
        { name: "bridge_3_toggle",             type: "tx_pdo",  label: "bridge_3_toggle",             std_name: "bridge_toggle",              module: 12,  domain: 0 }
        { name: "bridge_3_real_value",         type: "tx_pdo",  label: "bridge_3_real_value",         std_name: "bridge_real_value",          module: 12,  domain: 0 }
        { name: "bridge_3_start_calibration",  type: "rx_pdo",  label: "bridge_3_start_calibration",  std_name: "bridge_start_calibration",   module: 12,  domain: 0 }
        { name: "bridge_3_disable_calibration",type: "rx_pdo",  label: "bridge_3_disable_calibration",std_name: "bridge_disable_calibration", module: 12,  domain: 0 }
        { name: "bridge_3_input_freeze",       type: "rx_pdo",  label: "bridge_3_input_freeze",       std_name: "bridge_input_freeze",        module: 12,  domain: 0 }
        { name: "bridge_3_sample_mode",        type: "rx_pdo",  label: "bridge_3_sample_mode",        std_name: "bridge_sample_mode",         module: 12,  domain: 0 }
        { name: "bridge_3_tara",               type: "rx_pdo",  label: "bridge_3_tara",               std_name: "bridge_tara",                module: 12,  domain: 0 }

        # Resistor bridge 4
        { name: "bridge_4_gap",                type: "tx_pdo",  label: "bridge_4_gap",                std_name: "bridge_gap",                 module: 13,  domain: 0 }
        { name: "bridge_4_overrange",          type: "tx_pdo",  label: "bridge_4_overrange",          std_name: "bridge_overrange",           module: 13,  domain: 0 }
        { name: "bridge_4_data_invalid",       type: "tx_pdo",  label: "bridge_4_data_invalid",       std_name: "bridge_data_invalid",        module: 13,  domain: 0 }
        { name: "bridge_4_error",              type: "tx_pdo",  label: "bridge_4_error",              std_name: "bridge_error",               module: 13,  domain: 0 }
        { name: "bridge_4_calibrating",        type: "tx_pdo",  label: "bridge_4_calibrating",        std_name: "bridge_calibrating",         module: 13,  domain: 0 }
        { name: "bridge_4_steady_state",       type: "tx_pdo",  label: "bridge_4_steady_state",       std_name: "bridge_steady_state",        module: 13,  domain: 0 }
        { name: "bridge_4_sync_error",         type: "tx_pdo",  label: "bridge_4_sync_error",         std_name: "bridge_sync_error",          module: 13,  domain: 0 }
        { name: "bridge_4_toggle",             type: "tx_pdo",  label: "bridge_4_toggle",             std_name: "bridge_toggle",              module: 13,  domain: 0 }
        { name: "bridge_4_real_value",          type: "tx_pdo",  label: "bridge_4_real_value",          std_name: "bridge_real_value",          module: 13,  domain: 0 }
        { name: "bridge_4_start_calibration",  type: "rx_pdo",  label: "bridge_4_start_calibration",  std_name: "bridge_start_calibration",   module: 13,  domain: 0 }
        { name: "bridge_4_disable_calibration",type: "rx_pdo",  label: "bridge_4_disable_calibration",std_name: "bridge_disable_calibration", module: 13,  domain: 0 }
        { name: "bridge_4_input_freeze",       type: "rx_pdo",  label: "bridge_4_input_freeze",       std_name: "bridge_input_freeze",        module: 13,  domain: 0 }
        { name: "bridge_4_sample_mode",        type: "rx_pdo",  label: "bridge_4_sample_mode",        std_name: "bridge_sample_mode",         module: 13,  domain: 0 }
        { name: "bridge_4_tara",               type: "rx_pdo",  label: "bridge_4_tara",               std_name: "bridge_tara",                module: 13,  domain: 0 }

        # Resistor bridge 5
        { name: "bridge_5_gap",                type: "tx_pdo",  label: "bridge_5_gap",                std_name: "bridge_gap",                 module: 15,  domain: 0 }
        { name: "bridge_5_overrange",          type: "tx_pdo",  label: "bridge_5_overrange",          std_name: "bridge_overrange",           module: 15,  domain: 0 }
        { name: "bridge_5_data_invalid",       type: "tx_pdo",  label: "bridge_5_data_invalid",       std_name: "bridge_data_invalid",        module: 15,  domain: 0 }
        { name: "bridge_5_error",              type: "tx_pdo",  label: "bridge_5_error",              std_name: "bridge_error",               module: 15,  domain: 0 }
        { name: "bridge_5_calibrating",        type: "tx_pdo",  label: "bridge_5_calibrating",        std_name: "bridge_calibrating",         module: 15,  domain: 0 }
        { name: "bridge_5_steady_state",       type: "tx_pdo",  label: "bridge_5_steady_state",       std_name: "bridge_steady_state",        module: 15,  domain: 0 }
        { name: "bridge_5_sync_error",         type: "tx_pdo",  label: "bridge_5_sync_error",         std_name: "bridge_sync_error",          module: 15,  domain: 0 }
        { name: "bridge_5_toggle",             type: "tx_pdo",  label: "bridge_5_toggle",             std_name: "bridge_toggle",              module: 15,  domain: 0 }
        { name: "bridge_5_real_value",         type: "tx_pdo",  label: "bridge_5_real_value",         std_name: "bridge_real_value",          module: 15,  domain: 0 }
        { name: "bridge_5_start_calibration",  type: "rx_pdo",  label: "bridge_5_start_calibration",  std_name: "bridge_start_calibration",   module: 15,  domain: 0 }
        { name: "bridge_5_disable_calibration",type: "rx_pdo",  label: "bridge_5_disable_calibration",std_name: "bridge_disable_calibration", module: 15,  domain: 0 }
        { name: "bridge_5_input_freeze",       type: "rx_pdo",  label: "bridge_5_input_freeze",       std_name: "bridge_input_freeze",        module: 15,  domain: 0 }
        { name: "bridge_5_sample_mode",        type: "rx_pdo",  label: "bridge_5_sample_mode",        std_name: "bridge_sample_mode",         module: 15,  domain: 0 }
        { name: "bridge_5_tara",               type: "rx_pdo",  label: "bridge_5_tara",               std_name: "bridge_tara",                module: 15,  domain: 0 }

        # Resistor bridge 6
        { name: "bridge_6_gap",                type: "tx_pdo",  label: "bridge_6_gap",                std_name: "bridge_gap",                 module: 16,  domain: 0 }
        { name: "bridge_6_overrange",          type: "tx_pdo",  label: "bridge_6_overrange",          std_name: "bridge_overrange",           module: 16,  domain: 0 }
        { name: "bridge_6_data_invalid",       type: "tx_pdo",  label: "bridge_6_data_invalid",       std_name: "bridge_data_invalid",        module: 16,  domain: 0 }
        { name: "bridge_6_error",              type: "tx_pdo",  label: "bridge_6_error",              std_name: "bridge_error",               module: 16,  domain: 0 }
        { name: "bridge_6_calibrating",        type: "tx_pdo",  label: "bridge_6_calibrating",        std_name: "bridge_calibrating",         module: 16,  domain: 0 }
        { name: "bridge_6_steady_state",       type: "tx_pdo",  label: "bridge_6_steady_state",       std_name: "bridge_steady_state",        module: 16,  domain: 0 }
        { name: "bridge_6_sync_error",         type: "tx_pdo",  label: "bridge_6_sync_error",         std_name: "bridge_sync_error",          module: 16,  domain: 0 }
        { name: "bridge_6_toggle",             type: "tx_pdo",  label: "bridge_6_toggle",             std_name: "bridge_toggle",              module: 16,  domain: 0 }
        { name: "bridge_6_real_value",         type: "tx_pdo",  label: "bridge_6_real_value",         std_name: "bridge_real_value",          module: 16,  domain: 0 }
        { name: "bridge_6_start_calibration",  type: "rx_pdo",  label: "bridge_6_start_calibration",  std_name: "bridge_start_calibration",   module: 16,  domain: 0 }
        { name: "bridge_6_disable_calibration",type: "rx_pdo",  label: "bridge_6_disable_calibration",std_name: "bridge_disable_calibration", module: 16,  domain: 0 }
        { name: "bridge_6_input_freeze",       type: "rx_pdo",  label: "bridge_6_input_freeze",       std_name: "bridge_input_freeze",        module: 16,  domain: 0 }
        { name: "bridge_6_sample_mode",        type: "rx_pdo",  label: "bridge_6_sample_mode",        std_name: "bridge_sample_mode",         module: 16,  domain: 0 }
        { name: "bridge_6_tara",               type: "rx_pdo",  label: "bridge_6_tara",               std_name: "bridge_tara",                module: 16,  domain: 0 }
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
            objs: []
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
                {name: "bridge_real_value",   index: 0x6000, sub_index: 0x12, bit: 0}
                {name: "bridge_start_calibration",   index: 0x7000, sub_index: 0x1, bit: 0}
                {name: "bridge_disable_calibration",   index: 0x7000, sub_index: 0x2, bit: 0}
                {name: "bridge_input_freeze",   index: 0x7000, sub_index: 0x3, bit: 0}
                {name: "bridge_sample_mode",   index: 0x7000, sub_index: 0x4, bit: 0}
            ]
        }
    ]
