#include "AcsHwAdapter.h"

using namespace std;
using namespace gmt;

AcsHwAdapter::AcsHwAdapter(
                            const string& comp_uri,
                            const string& comp_name,
                            const string& comp_host,
                            int comp_port,
                            const string& comp_acl,
                            double comp_scan_rate,
                            int comp_prio,
                            int comp_stack_size)
    : AcsHwAdapterBase(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate, comp_prio, comp_stack_size)
{
}

AcsHwAdapter::~AcsHwAdapter()
{
}

void AcsHwAdapter::step()
{
    //XXX add your code here

    if (is_step_rate(49))
    {
        // std::cout << "ADAPTER resistor_bridge_status[1].bridge_steady_state  " << resistor_bridge_status[1].bridge_steady_state    << std::endl;
        // std::cout << "ADAPTER resistor_bridge_status[2].bridge_steady_state  " << resistor_bridge_status[2].bridge_steady_state    << std::endl;
        // std::cout << "ADAPTER resistor_bridge_status[3].bridge_steady_state  " << resistor_bridge_status[3].bridge_steady_state    << std::endl;
        // std::cout << "ADAPTER resistor_bridge_status[4].bridge_steady_state  " << resistor_bridge_status[4].bridge_steady_state    << std::endl;
        // std::cout << "ADAPTER resistor_bridge_status[5].bridge_steady_state  " << resistor_bridge_status[5].bridge_steady_state    << std::endl;
        // std::cout << "ADAPTER resistor_bridge_status[1].bridge_int_value     " << resistor_bridge_status[1].bridge_int_value    << std::endl;
        // std::cout << "ADAPTER resistor_bridge_status[2].bridge_int_value     " << resistor_bridge_status[2].bridge_int_value    << std::endl;
        // std::cout << "ADAPTER resistor_bridge_status[3].bridge_int_value     " << resistor_bridge_status[3].bridge_int_value    << std::endl;
        // std::cout << "ADAPTER resistor_bridge_status[4].bridge_int_value     " << resistor_bridge_status[4].bridge_int_value    << std::endl;
        // std::cout << "ADAPTER resistor_bridge_status[5].bridge_int_value     " << resistor_bridge_status[5].bridge_int_value    << std::endl;
    }
}

void AcsHwAdapter::setup()
{
    //setup async input handlers

    //ex: new_async_input_handler ("my_input_name", this, &AcsHwAdapter::my_input_handler);

    //add behaviors to features

    //other initializations

}
