StructType "digital_in_t",
    desc: "digital_in_t"
    elements:
        digital_in_1_value:    { desc: "digital_in_1_value",       type: "bool",     units: "" }
        digital_in_2_value:    { desc: "digital_in_2_value",         type: "bool",     units: "" }
        digital_in_3_value:    { desc: "digital_in_3_value",       type: "bool",     units: "" }
        digital_in_4_value:    { desc: "digital_in_4_value",         type: "bool",     units: "" }
        digital_in_5_value:    { desc: "digital_in_5_value",       type: "bool",     units: "" }
        digital_in_6_value:    { desc: "digital_in_6_value",         type: "bool",     units: "" }
        digital_in_7_value:    { desc: "digital_in_7_value",       type: "bool",     units: "" }
        digital_in_8_value:    { desc: "digital_in_8_value",         type: "bool",     units: "" }

StructType "digital_out_t",
    desc: "digital_out_t",
    elements:
        digital_out_1_value:   { desc: "digital_out_1_value", type: "bool", units: "" }
        digital_out_2_value:   { desc: "digital_out_2_value", type: "bool", units: "" }
        digital_out_3_value:   { desc: "digital_out_3_value", type: "bool", units: "" }
        digital_out_4_value:   { desc: "digital_out_4_value", type: "bool", units: "" }
        digital_out_5_value:   { desc: "digital_out_5_value", type: "bool", units: "" }
        digital_out_6_value:   { desc: "digital_out_6_value", type: "bool", units: "" }
        digital_out_7_value:   { desc: "digital_out_7_value", type: "bool", units: "" }
        digital_out_8_value:   { desc: "digital_out_8_value", type: "bool", units: "" }

StructType "analog_in_t",
    desc: "analog_in_t"
    elements:
        analog_in_1_value:     { desc: "analog_in_1_value",       type: "uint16",     units: "" }
        analog_in_2_value:     { desc: "analog_in_2_value",         type: "uint16",     units: "" }


StructType "analog_out_t",
    desc:    "analog_out_t"
    elements:
        analog_out_1_value:    { desc: "analog_out_1_value", type: "uint16", units: "" }
        analog_out_2_value:    { desc: "analog_out_2_value", type: "uint16", units: "" }

StructType "power_supply_t",
    desc: "power supply state",
    elements:
        power_on:              { desc: "power_on",              type: "bool", units: "" }
        power_overload:        { desc: "power_overload",        type: "bool", units: "" }

StructType "resistor_bridge_status_t",
    desc: "resistor bridge status",
    elements:
        bridge_overrange:          { desc: "bridge_overrange",            type: "bool", units: "" }
        bridge_data_invalid:       { desc: "bridge_data_invalid",         type: "bool", units: "" }
        bridge_error:              { desc: "bridge_error",                type: "bool", units: "" }
        bridge_calibrating:        { desc: "bridge_calibrating",          type: "bool", units: "" }
        bridge_steady_state:       { desc: "bridge_steady_state",         type: "bool", units: "" }
        bridge_sync_error:         { desc: "bridge_sync_error",           type: "bool", units: "" }
        bridge_toggle:             { desc: "bridge_toggle",               type: "bool", units: "" }
        bridge_int_value:          { desc: "bridge_int_value",            type: "int32", units: "" }
        bridge_real_value:         { desc: "bridge_real_value",           type: "float", units: "" }

StructType "resistor_bridge_control_t",
    desc: "resistor bridge control",
    elements:
        bridge_start_calibration:    { desc: "bridge_start_calibration",     type: "bool", units: "" }
        bridge_disable_calibration:  { desc: "bridge_disable_calibration",   type: "bool", units: "" }
        bridge_input_freeze:         { desc: "bridge_input_freeze",          type: "bool", units: "" }
        bridge_sample_mode:          { desc: "bridge_sample_mode",           type: "bool", units: "" }
        bridge_tara:                 { desc: "bridge_tara",                  type: "bool", units: "" }
