Package   'm1acs_ctrl_pkg',
    info: 'M1 ACS Controller Package'
    desc: 'M1 ACS Controller Package'
    uses: ["ocs_core_fwk"]

    connectors: [

        { id: 8101, from: { element: "m1acs_hw1_adapter", port: "digital_in"},              to: { element: "m1acs_main_ctrl",   port: "digital_in"},              max_latency: 0.5, nom_rate: 100, on_fault: "", conversion: "", bus: "" }
        { id: 8102, from: { element: "m1acs_hw1_adapter", port: "analog_in"},               to: { element: "m1acs_main_ctrl",   port: "analog_in"},               max_latency: 0.5, nom_rate: 100, on_fault: "", conversion: "", bus: "" }
        { id: 8103, from: { element: "m1acs_hw1_adapter", port: "ssi_in"},                  to: { element: "m1acs_main_ctrl",     port: "ssi_in"},                  max_latency: 0.5, nom_rate: 100, on_fault: "", conversion: "", bus: "" }
        { id: 8104, from: { element: "m1acs_hw1_adapter", port: "power_supply"},            to: { element: "m1acs_main_ctrl",   port: "power_supply"},            max_latency: 0.5, nom_rate: 100, on_fault: "", conversion: "", bus: "" }
        { id: 8105, from: { element: "m1acs_hw1_adapter", port: "resistor_bridge_status"},  to: { element: "m1acs_main_ctrl",   port: "resistor_bridge_status"},  max_latency: 0.5, nom_rate: 100, on_fault: "", conversion: "", bus: "" }

        { id: 8201, from: { element: "m1acs_main_ctrl",   port: "digital_out"},             to: { element: "m1acs_hw1_adapter", port: "digital_out"},             max_latency: 0.5, nom_rate: 100, on_fault: "", conversion: "", bus: "" }
        { id: 8202, from: { element: "m1acs_main_ctrl",   port: "analog_out"},              to: { element: "m1acs_hw1_adapter", port: "analog_out"},              max_latency: 0.5, nom_rate: 100, on_fault: "", conversion: "", bus: "" }
        { id: 8203, from: { element: "m1acs_main_ctrl",   port: "resistor_bridge_control"}, to: { element: "m1acs_hw1_adapter", port: "resistor_bridge_control"}, max_latency: 0.5, nom_rate: 100, on_fault: "", conversion: "", bus: "" }

    ]
