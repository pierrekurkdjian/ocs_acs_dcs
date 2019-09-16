#ifndef _M1acsHwAdapterBase_h_
#define _M1acsHwAdapterBase_h_

// GMT AUTO GENERATED CODE

#include <ocs_core_fwk.h>
#include <ocs_io_fwk.h>
#include "../../include/m1acs_dcs_port_types.h"

class M1acsHwAdapterSetup;

namespace gmt
{

class M1acsHwAdapterBase : public EthercatAdapter
{
    public:
        M1acsHwAdapterBase(
                        const  std::string& comp_uri,
                        const  std::string& comp_name,
                        const  std::string& comp_host,
                        int    comp_port,
                        const  std::string& comp_acl,
                        double comp_scan_rate = 1.0,
                        int comp_prio = GMT_THREAD_DEFAULT_PRIO,
                        int comp_stack_size = GMT_DEFAULT_STACK_SIZE);

        virtual ~M1acsHwAdapterBase();

    protected:

        typedef M1acsHwAdapterSetup Setup;
        typedef EthercatAdapter Base;

        /**
        * Creates the state of the Component, i.e., state variables,
        * inputs, outputs, properties, alarms and faults
        * Overriden from the Component class
        */
        virtual void create_state() override;

        /**
        * Uses the given Component::Setup parameter to configure all the
        * Component interface features (state vars, inputs, outputs, properties, ...)
        * Overriden from the Component class
        */
        virtual void setup_state (ComponentSetup& conf) override;

        /**
        * Configure the object from a file. The classes that derive from Component
        * must reimplement this method, in order to unpack the binary contents of
        * the configuration file with their Setup structure.
        * Overriden from the Component class
        */
        virtual void configure_from_file (const std::string& fname) override;

    protected:

        // Create state variables

        // Inputs declaration
        m1acs_digital_out_t      digital_out;         // Digital output (values)
        m1acs_analog_out_t       analog_out;          // Analog output (values)
        std::array<m1acs_resistor_bridge_control_t, 7> resistor_bridge_control; // Resistor bridge control

        // Outputs declaration
        m1acs_digital_in_t       digital_in;          // Digital input (values)
        m1acs_analog_in_t        analog_in;           // Analog input (values + status)
        std::array<m1acs_ssi_in_t, 4> ssi_in;              // SSI input (values + status)
        std::array<m1acs_power_supply_t, 4> power_supply;        // Power supply state
        std::array<m1acs_resistor_bridge_status_t, 7> resistor_bridge_status; // Resistor bridge status

        // Configuration properties
};

} // namespace gmt

#endif   // _M1acsHwAdapterBase_h_
