#ifndef _AcsHwAdapterSetup_h_
#define _AcsHwAdapterSetup_h_

#include <msgpack.hpp>
#include <ocs_core_fwk.h>
#include <ocs_io_fwk.h>
#include "../../include/acs_dcs_port_types.h"

namespace gmt
{

struct AcsHwAdapterSetup : public  EthercatAdapterSetup
{

    struct PropertyConf : public  EthercatAdapterSetup::PropertyConf
    {
        MSGPACK_DEFINE_MAP(uri, name, host, port, scan_rate, acl, priority, ecat_cfg_name)
    };

    struct StateVarConf : public  EthercatAdapterSetup::StateVarConf
    {
        MSGPACK_DEFINE_MAP(op_state)
    };

    struct InputConf : public EthercatAdapterSetup::InputConf
    {
        DataIODef<digital_out_t>       digital_out;
        DataIODef<analog_out_t>        analog_out;
        DataIODef<std::array<resistor_bridge_control_t, 7>>  resistor_bridge_control;
        MSGPACK_DEFINE_MAP(digital_out, analog_out, resistor_bridge_control, sdo_read_update_req, sdo_write_enable, op_state_goal)
    };

    struct OutputConf : public EthercatAdapterSetup::OutputConf
    {
        DataIODef<digital_in_t>        digital_in;
        DataIODef<analog_in_t>         analog_in;
        DataIODef<std::array<power_supply_t, 4>>  power_supply;
        DataIODef<std::array<resistor_bridge_status_t, 7>>  resistor_bridge_status;
        MSGPACK_DEFINE_MAP(digital_in, analog_in, power_supply, resistor_bridge_status, sdo_read_update_done, op_state_value)
    };

    PropertyConf     properties;
    StateVarConf     state_vars;
    InputConf        inputs;
    OutputConf       outputs;

    MSGPACK_DEFINE_MAP(properties, state_vars, inputs, outputs, connectors)
};

} //namespace gmt

#endif // _AcsHwAdapterSetup_h_
