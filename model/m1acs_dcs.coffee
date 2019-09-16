DCS       'm1acs_dcs',
    info: 'M1 ACS'
    desc: require './m1acs_dcs.rst'

    uses:  [
        "ocs_core_fwk"
        "ocs_ctrl_fwk"
    ]

    types: [
        "m1acs_digital_in_t"
        "m1acs_digital_out_t"
        "m1acs_analog_in_t"
        "m1acs_analog_out_t"
        "m1acs_ssi_in_t"
        "m1acs_power_supply_t"
        "m1acs_resistor_bridge_status_t"
        "m1acs_resistor_bridge_control_t"
        "m1acs_coeff_load_cell_t"
    ]

    connectors: [

        { id: 8301, from:   {element: "m1acs_main_ctrl",   port: "digital_in_ext"},             to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8302, from:   {element: "m1acs_main_ctrl",   port: "analog_in_ext"},              to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8303, from:   {element: "m1acs_main_ctrl",   port: "ssi_in_ext"},                 to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8304, from:   {element: "m1acs_main_ctrl",   port: "resistor_bridge_status_ext"}, to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }

        { id: 8401, to: {element: "m1acs_main_ctrl",   port: "digital_out_ext"},              from: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8402, to: {element: "m1acs_main_ctrl",   port: "analog_out_ext"},               from: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8403, to: {element: "m1acs_main_ctrl",   port: "power_supply_ext"},             from: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8404, to: {element: "m1acs_main_ctrl",   port: "resistor_bridge_control_ext"},  from: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }

    ]
