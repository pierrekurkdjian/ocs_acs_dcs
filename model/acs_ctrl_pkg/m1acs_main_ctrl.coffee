Controller         'm1acs_main_ctrl',
    info:          'M1 ACS main Controller'
    desc:          'This component implements the control of the M1 ACS'
    extends:       ['BaseController']
    abstract:      false
    uses:          ["ocs_core_fwk", "ocs_ctrl_fwk"]

    input_ports:
        digital_in:                  { type: 'm1acs_digital_in_t',                 protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Digital output (values)' }
        analog_in:                   { type: 'm1acs_analog_in_t',                  protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Analog output (values)' }
        ssi_in:                      { type: 'm1acs_ssi_in_t[4]',                  protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Power supply state' }
        power_supply:                { type: 'm1acs_power_supply_t[4]',            protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Power supply state' }
        resistor_bridge_status:      { type: 'm1acs_resistor_bridge_status_t[7]',  protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Resistor bridge status' }
        digital_out_ext:             { type: 'm1acs_digital_out_t',                protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Digital output (values)' }
        analog_out_ext:              { type: 'm1acs_analog_out_t',                 protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true,  desc: 'Analog output (values)' }
        power_supply_ext:            { type: 'm1acs_power_supply_t[4]',            protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Power supply state' }
        resistor_bridge_status_ext:  { type: 'm1acs_resistor_bridge_status_t[7]',  protocol: 'pull', max_rate: 1000, blocking_mode: 'sync', owner: true, desc: 'Resistor bridge status' }

    output_ports:
        digital_out:                 { type: 'm1acs_digital_out_t',                protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Digital input (values)' }
        analog_out:                  { type: 'm1acs_analog_out_t',                 protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Analog input (values + status)' }
        resistor_bridge_control:     { type: 'm1acs_resistor_bridge_control_t[7]', protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false,  desc: 'Resistor bridge control' }
        digital_in_ext:              { type: 'm1acs_digital_in_t',                 protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Digital input (values)' }
        analog_in_ext:               { type: 'm1acs_analog_in_t',                  protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false, desc: 'Analog input (values + status)' }
        resistor_bridge_control_ext: { type: 'm1acs_resistor_bridge_control_t[7]', protocol: 'push', max_rate: 1000, blocking_mode: 'sync', owner: false,  desc: 'Resistor bridge control' }

    properties:
        uri:       {default: "gmt://127.0.0.1/m1acs_dcs"}
        name:      {default: "m1acs_main_ctrl"}
        host:      {default: "127.0.0.1"}
        port:      {default: 8010}
        scan_rate: {default: 100}
        bridge_float_value_calculated: { type: "float", default: 0.0 }
        coeff_load_cell_1:             { type: 'm1acs_coeff_load_cell_t',            default: {serial_number:1099520, compression_a0: -7.240699e-3, compression_a2:-2.334294e2, compression_a1:3.301142e-2, tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} }
        coeff_load_cell_2:             { type: 'm1acs_coeff_load_cell_t',            default: {serial_number:1234,    compression_a0: 0.1,          compression_a1:0.2,         compression_a2:0.3,         tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} }
        coeff_load_cell_3:             { type: 'm1acs_coeff_load_cell_t',            default: {serial_number:1234,    compression_a0: 0.1,          compression_a1:0.2,         compression_a2:0.3,         tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} }
        coeff_load_cell_4:             { type: 'm1acs_coeff_load_cell_t',            default: {serial_number:1234,    compression_a0: 0.1,          compression_a1:0.2,         compression_a2:0.3,         tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} }
        coeff_load_cell_5:             { type: 'm1acs_coeff_load_cell_t',            default: {serial_number:1234,    compression_a0: 0.1,          compression_a1:0.2,         compression_a2:0.3,         tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} }
        coeff_load_cell_6:             { type: 'm1acs_coeff_load_cell_t',            default: {serial_number:1234,    compression_a0: 0.1,          compression_a1:0.2,         compression_a2:0.3,         tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} }


    instance_configurations: ['m1acs_main_ctrl']
