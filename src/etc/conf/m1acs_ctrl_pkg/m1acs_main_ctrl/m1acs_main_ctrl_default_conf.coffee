
# Component  m1acs_main_ctrl instance configuration file
# Ports should be setup per instance

module.exports =

    properties:
        uri: { name: 'uri', default_value: 'gmt://127.0.0.1/m1acs_dcs/m1acs_main_ctrl' , type: 'string', desc: 'Uri path for the component' }
        name: { name: 'name', default_value: 'm1acs_main_ctrl' , type: 'string', desc: 'Name the component' }
        host: { name: 'host', default_value: '127.0.0.1' , type: 'string', desc: 'Default host for deployment.' }
        port: { name: 'port', default_value: 8020 , type: 'integer', desc: 'Default configuration port' }
        scan_rate: { name: 'scan_rate', default_value: 100 , type: 'float', desc: 'The scanning rate of the component loop in Hz. In each iteration of the loop the component must process its ports and health status. The estimation of the state variables, is defined by the state variable sampling rate and it may use an estimation model. The control of the state variable is defined by the state variable control rate. It must calculate the control output, if necessary with a control model. The scanning rate shall be always higher that the maximum of the sampling or control rate of any of its states variables' }
        bridge_float_value_calculated: { name: 'bridge_float_value_calculated', default_value: 0 , type: 'float' }
        coeff_load_cell_1: { name: 'coeff_load_cell_1', default_value: {serial_number:1099520, compression_a0: -7.240699e-3, compression_a1:-2.334294e2, compression_a2:3.301142e-2, tension_a1:0.4, tension_a1:0.5, tension_a2:0.6} , type: 'm1acs_coeff_load_cell_t' }
        coeff_load_cell_2: { name: 'coeff_load_cell_2', default_value: {serial_number:1234, compression_a0: 0.1, compression_a1:0.2, compression_a2:0.3, tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} , type: 'm1acs_coeff_load_cell_t' }
        coeff_load_cell_3: { name: 'coeff_load_cell_3', default_value: {serial_number:1234, compression_a0: 0.1, compression_a1:0.2, compression_a2:0.3, tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} , type: 'm1acs_coeff_load_cell_t' }
        coeff_load_cell_4: { name: 'coeff_load_cell_4', default_value: {serial_number:1234, compression_a0: 0.1, compression_a1:0.2, compression_a2:0.3, tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} , type: 'm1acs_coeff_load_cell_t' }
        coeff_load_cell_5: { name: 'coeff_load_cell_5', default_value: {serial_number:1234, compression_a0: 0.1, compression_a1:0.2, compression_a2:0.3, tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} , type: 'm1acs_coeff_load_cell_t' }
        coeff_load_cell_6: { name: 'coeff_load_cell_6', default_value: {serial_number:1234, compression_a0: 0.1, compression_a1:0.2, compression_a2:0.3, tension_a0:0.4, tension_a1:0.5, tension_a2:0.6} , type: 'm1acs_coeff_load_cell_t' }
        acl: { name: 'acl', default_value: 'PRIVATE' , type: 'string', desc: 'Access Control List. List of namespaces that can issue a command to the controller. TBC' }
        priority: { name: 'priority', default_value: 0 , max: 100, type: 'integer', desc: 'The priority property defines the relative priority between Component running in different Threads. The priority shall be interpreted higher when the value is higher. This property can be used by implementations that support real time behavior. When the property value is 0 the Component doesn&#x27;t require any real-time consideration by the implementation' }

    state_vars:
        op_state: { name: 'op_state', default_value: 'OFF' , type: 'OperationalState', desc: 'Operational Mode State Variable' }
        sim_mode: { name: 'sim_mode', default_value: 'ON_LINE' , type: 'SimulationMode', desc: 'Simulation Mode State Variable' }
        control_mode: { name: 'control_mode', default_value: 'STANDALONE' , type: 'ControlMode', desc: 'Control Mode State Variable' }

    inputs:
        digital_in:          { name: 'digital_in',            port_type: 'pull',  url: 'tcp://127.0.0.1:8101', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 100,   owner: true  }
        analog_in:           { name: 'analog_in',             port_type: 'pull',  url: 'tcp://127.0.0.1:8102', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 100,   owner: true  }
        ssi_in:              { name: 'ssi_in',                port_type: 'pull',  url: 'tcp://127.0.0.1:8103', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 100,   owner: true  }
        power_supply:        { name: 'power_supply',          port_type: 'pull',  url: 'tcp://127.0.0.1:8104', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 100,   owner: true  }
        resistor_bridge_status: { name: 'resistor_bridge_status', port_type: 'pull',  url: 'tcp://127.0.0.1:8105', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 100,   owner: true  }
        digital_out_ext:     { name: 'digital_out_ext',       port_type: 'pull',  url: 'tcp://127.0.0.1:8401', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 1,     owner: true  }
        analog_out_ext:      { name: 'analog_out_ext',        port_type: 'pull',  url: 'tcp://127.0.0.1:8402', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 1,     owner: true  }
        power_supply_ext:    { name: 'power_supply_ext',      port_type: 'pull',  url: 'tcp://127.0.0.1:8403', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 1,     owner: true  }
        resistor_bridge_status_ext: { name: 'resistor_bridge_status_ext', port_type: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 1,     owner: true  }
        op_state_goal:       { name: 'op_state_goal',         port_type: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1,     owner: true}
        sim_mode_goal:       { name: 'sim_mode_goal',         port_type: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1,     owner: true}
        control_mode_goal:   { name: 'control_mode_goal',     port_type: 'pull',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1,     owner: true}

    outputs:
        digital_out:         { name: 'digital_out',           port_type: 'push',  url: 'tcp://127.0.0.1:8201', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 100,   owner: false }
        analog_out:          { name: 'analog_out',            port_type: 'push',  url: 'tcp://127.0.0.1:8202', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 100,   owner: false }
        resistor_bridge_control: { name: 'resistor_bridge_control', port_type: 'push',  url: 'tcp://127.0.0.1:8203', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 100,   owner: false }
        digital_in_ext:      { name: 'digital_in_ext',        port_type: 'push',  url: 'tcp://127.0.0.1:8301', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 1,     owner: false }
        analog_in_ext:       { name: 'analog_in_ext',         port_type: 'push',  url: 'tcp://127.0.0.1:8302', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 1,     owner: false }
        resistor_bridge_control_ext: { name: 'resistor_bridge_control_ext', port_type: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'sync',  max_rate: 1000,  nom_rate: 1,     owner: false }
        op_state_value:      { name: 'op_state_value',        port_type: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1,     owner: false}
        sim_mode_value:      { name: 'sim_mode_value',        port_type: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1,     owner: false}
        control_mode_value:  { name: 'control_mode_value',    port_type: 'push',  url: 'tcp://127.0.0.1:8000', blocking_mode: 'async', max_rate: 1,     nom_rate: 1,     owner: false}
