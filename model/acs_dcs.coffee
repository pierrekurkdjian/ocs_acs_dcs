fs = require 'fs'

#require './hdk_dcs_types'   #temporary

DCS       'acs_dcs',
    info: 'ACS'
    desc: require './acs_dcs.rst'

    uses:  [
        "ocs_core_fwk"
        "ocs_ctrl_fwk"
    ]

    types: [
        "digital_in_t"
        "digital_out_t"
        "analog_in_t"
        "analog_out_t"
        "ssi_in_t"
        "power_supply_t"
        "resistor_bridge_status_t"
        "resistor_bridge_control_t"
        # "load_cell_coeff_t"
    ]

    connectors: [

        { id: 8301, from:   {element: "acs_main_ctrl",   port: "digital_in_ext"},             to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8302, from:   {element: "acs_main_ctrl",   port: "analog_in_ext"},              to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8303, from:   {element: "acs_main_ctrl",   port: "ssi_in_ext"},                 to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8304, from:   {element: "acs_main_ctrl",   port: "resistor_bridge_status_ext"}, to: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }

        { id: 8401, to: {element: "acs_main_ctrl",   port: "digital_out_ext"},              from: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8402, to: {element: "acs_main_ctrl",   port: "analog_out_ext"},               from: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8403, to: {element: "acs_main_ctrl",   port: "power_supply_ext"},             from: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }
        { id: 8404, to: {element: "acs_main_ctrl",   port: "resistor_bridge_control_ext"},  from: {element: "*", port: "*"}, max_latency: 0.5,     nom_rate: 1, on_fault: "", conversion: "", bus: "" }

    ]
