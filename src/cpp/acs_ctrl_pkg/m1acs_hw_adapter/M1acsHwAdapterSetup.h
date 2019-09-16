#ifndef _M1acsHwAdapterSetup_h_
#define _M1acsHwAdapterSetup_h_

#include <msgpack.hpp>
#include <ocs_core_fwk.h>
#include <ocs_io_fwk.h>
#include "../../include/m1acs_dcs_port_types.h"

namespace gmt
{

struct M1acsHwAdapterSetup : public  EthercatAdapterSetup
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
        DataIODef<m1acs_digital_out_t>  digital_out;
        DataIODef<m1acs_analog_out_t>  analog_out;
        DataIODef<std::array<m1acs_resistor_bridge_control_t, 7>>  resistor_bridge_control;
        MSGPACK_DEFINE_MAP(digital_out, analog_out, resistor_bridge_control, sdo_read_update_req, sdo_write_enable, op_state_goal)
    };

    struct OutputConf : public EthercatAdapterSetup::OutputConf
    {
        DataIODef<m1acs_digital_in_t>  digital_in;
        DataIODef<m1acs_analog_in_t>   analog_in;
        DataIODef<std::array<m1acs_ssi_in_t, 4>>  ssi_in;
        DataIODef<std::array<m1acs_power_supply_t, 4>>  power_supply;
        DataIODef<std::array<m1acs_resistor_bridge_status_t, 7>>  resistor_bridge_status;
        MSGPACK_DEFINE_MAP(digital_in, analog_in, ssi_in, power_supply, resistor_bridge_status, sdo_read_update_done, op_state_value)
    };

    PropertyConf     properties;
    StateVarConf     state_vars;
    InputConf        inputs;
    OutputConf       outputs;

    MSGPACK_DEFINE_MAP(properties, state_vars, inputs, outputs, connectors)
};

} //namespace gmt

#endif // _M1acsHwAdapterSetup_h_
