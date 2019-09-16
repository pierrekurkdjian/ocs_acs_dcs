#ifndef _M1acsMainCtrlSetup_h_
#define _M1acsMainCtrlSetup_h_

#include <msgpack.hpp>
#include <ocs_core_fwk.h>
#include <ocs_ctrl_fwk.h>
#include "../../include/m1acs_dcs_port_types.h"

namespace gmt
{

struct M1acsMainCtrlSetup : public  BaseControllerSetup
{

    struct PropertyConf : public  BaseControllerSetup::PropertyConf
    {
        PropertyDef<float>             bridge_float_value_calculated;
        PropertyDef<m1acs_coeff_load_cell_t>  coeff_load_cell_1;
        PropertyDef<m1acs_coeff_load_cell_t>  coeff_load_cell_2;
        PropertyDef<m1acs_coeff_load_cell_t>  coeff_load_cell_3;
        PropertyDef<m1acs_coeff_load_cell_t>  coeff_load_cell_4;
        PropertyDef<m1acs_coeff_load_cell_t>  coeff_load_cell_5;
        PropertyDef<m1acs_coeff_load_cell_t>  coeff_load_cell_6;
        MSGPACK_DEFINE_MAP(uri, name, host, port, scan_rate, bridge_float_value_calculated, coeff_load_cell_1, coeff_load_cell_2, coeff_load_cell_3, coeff_load_cell_4, coeff_load_cell_5, coeff_load_cell_6, acl, priority)
    };

    struct StateVarConf : public  BaseControllerSetup::StateVarConf
    {
        MSGPACK_DEFINE_MAP(op_state, sim_mode, control_mode)
    };

    struct InputConf : public BaseControllerSetup::InputConf
    {
        DataIODef<m1acs_digital_in_t>  digital_in;
        DataIODef<m1acs_analog_in_t>   analog_in;
        DataIODef<std::array<m1acs_ssi_in_t, 4>>  ssi_in;
        DataIODef<std::array<m1acs_power_supply_t, 4>>  power_supply;
        DataIODef<std::array<m1acs_resistor_bridge_status_t, 7>>  resistor_bridge_status;
        DataIODef<m1acs_digital_out_t>  digital_out_ext;
        DataIODef<m1acs_analog_out_t>  analog_out_ext;
        DataIODef<std::array<m1acs_power_supply_t, 4>>  power_supply_ext;
        DataIODef<std::array<m1acs_resistor_bridge_status_t, 7>>  resistor_bridge_status_ext;
        MSGPACK_DEFINE_MAP(digital_in, analog_in, ssi_in, power_supply, resistor_bridge_status, digital_out_ext, analog_out_ext, power_supply_ext, resistor_bridge_status_ext, op_state_goal, sim_mode_goal, control_mode_goal)
    };

    struct OutputConf : public BaseControllerSetup::OutputConf
    {
        DataIODef<m1acs_digital_out_t>  digital_out;
        DataIODef<m1acs_analog_out_t>  analog_out;
        DataIODef<std::array<m1acs_resistor_bridge_control_t, 7>>  resistor_bridge_control;
        DataIODef<m1acs_digital_in_t>  digital_in_ext;
        DataIODef<m1acs_analog_in_t>   analog_in_ext;
        DataIODef<std::array<m1acs_resistor_bridge_control_t, 7>>  resistor_bridge_control_ext;
        MSGPACK_DEFINE_MAP(digital_out, analog_out, resistor_bridge_control, digital_in_ext, analog_in_ext, resistor_bridge_control_ext, op_state_value, sim_mode_value, control_mode_value)
    };

    PropertyConf     properties;
    StateVarConf     state_vars;
    InputConf        inputs;
    OutputConf       outputs;

    MSGPACK_DEFINE_MAP(properties, state_vars, inputs, outputs, connectors)
};

} //namespace gmt

#endif // _M1acsMainCtrlSetup_h_
