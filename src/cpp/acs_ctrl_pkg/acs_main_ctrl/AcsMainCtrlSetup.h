#ifndef _AcsMainCtrlSetup_h_
#define _AcsMainCtrlSetup_h_

#include <msgpack.hpp>
#include <ocs_core_fwk.h>
#include <ocs_ctrl_fwk.h>
#include "../../include/acs_dcs_port_types.h"

namespace gmt
{

struct AcsMainCtrlSetup : public  BaseControllerSetup
{

    struct PropertyConf : public  BaseControllerSetup::PropertyConf
    {
        MSGPACK_DEFINE_MAP(uri, name, host, port, scan_rate, acl, priority)
    };

    struct StateVarConf : public  BaseControllerSetup::StateVarConf
    {
        MSGPACK_DEFINE_MAP(op_state, sim_mode, control_mode)
    };

    struct InputConf : public BaseControllerSetup::InputConf
    {
        DataIODef<digital_in_t>        digital_in;
        DataIODef<analog_in_t>         analog_in;
        DataIODef<std::array<power_supply_t, 4>>  power_supply;
        DataIODef<std::array<resistor_bridge_status_t, 7>>  resistor_bridge_status;
        DataIODef<digital_out_t>       digital_out_ext;
        DataIODef<analog_out_t>        analog_out_ext;
        DataIODef<std::array<power_supply_t, 4>>  power_supply_ext;
        DataIODef<std::array<resistor_bridge_status_t, 7>>  resistor_bridge_status_ext;
        MSGPACK_DEFINE_MAP(digital_in, analog_in, power_supply, resistor_bridge_status, digital_out_ext, analog_out_ext, power_supply_ext, resistor_bridge_status_ext, op_state_goal, sim_mode_goal, control_mode_goal)
    };

    struct OutputConf : public BaseControllerSetup::OutputConf
    {
        DataIODef<digital_out_t>       digital_out;
        DataIODef<analog_out_t>        analog_out;
        DataIODef<std::array<resistor_bridge_control_t, 7>>  resistor_bridge_control;
        DataIODef<digital_in_t>        digital_in_ext;
        DataIODef<analog_in_t>         analog_in_ext;
        DataIODef<std::array<resistor_bridge_control_t, 7>>  resistor_bridge_control_ext;
        MSGPACK_DEFINE_MAP(digital_out, analog_out, resistor_bridge_control, digital_in_ext, analog_in_ext, resistor_bridge_control_ext, op_state_value, sim_mode_value, control_mode_value)
    };

    PropertyConf     properties;
    StateVarConf     state_vars;
    InputConf        inputs;
    OutputConf       outputs;

    MSGPACK_DEFINE_MAP(properties, state_vars, inputs, outputs, connectors)
};

} //namespace gmt

#endif // _AcsMainCtrlSetup_h_
