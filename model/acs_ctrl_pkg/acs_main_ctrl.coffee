Controller         'acs_main_ctrl',
    info:          'ACS main Controller'
    desc:          'This component implements the control of the ACS'
    extends:       ['BaseController']
    abstract:      false
    uses:          ["ocs_core_fwk", "ocs_ctrl_fwk"]

    instances:     1
    c_factor:      1
    r_factor:      1
    procurement:   "swc"
    phase:         "design"
    resource:      "labor"
    assignee:      "PierreKurkdjian"
    fte_perc:      "100"
    status:        "in progress"
    activity_type: "activity"
    release:       [1]
    stage:         "1"

    input_ports:
        digital_in:                  { type: 'digital_in_t',                 protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Digital output (values)' }
        analog_in:                   { type: 'analog_in_t',                  protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Analog output (values)' }
        ssi_in:                      { type: 'ssi_in_t[4]',                  protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Power supply state' }
        power_supply:                { type: 'power_supply_t[4]',            protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Power supply state' }
        resistor_bridge_status:      { type: 'resistor_bridge_status_t[7]',  protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Resistor bridge status' }
        digital_out_ext:             { type: 'digital_out_t',                protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Digital output (values)' }
        analog_out_ext:              { type: 'analog_out_t',                 protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Analog output (values)' }
        power_supply_ext:            { type: 'power_supply_t[4]',            protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Power supply state' }
        resistor_bridge_status_ext:  { type: 'resistor_bridge_status_t[7]',  protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Resistor bridge status' }
        # load_cell_coeff:             { type: 'load_cell_coeff_t[7]',         protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Coeff of the 2nd order regression linking voltage and encoder weight' }

    output_ports:
        digital_out:                 { type: 'digital_out_t',                protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Digital input (values)' }
        analog_out:                  { type: 'analog_out_t',                 protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Analog input (values + status)' }
        resistor_bridge_control:     { type: 'resistor_bridge_control_t[7]', protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false,  desc: 'Resistor bridge control' }
        digital_in_ext:              { type: 'digital_in_t',                 protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Digital input (values)' }
        analog_in_ext:               { type: 'analog_in_t',                  protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Analog input (values + status)' }
        resistor_bridge_control_ext: { type: 'resistor_bridge_control_t[7]', protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false,  desc: 'Resistor bridge control' }

    properties:
        uri:       {default: "gmt://127.0.0.1/acs_dcs"}
        name:      {default: "acs_main_ctrl"}
        host:      {default: "127.0.0.1"}
        port:      {default: 8010}
        scan_rate: {default: 100}

    instance_configurations: ['acs_main_ctrl']
