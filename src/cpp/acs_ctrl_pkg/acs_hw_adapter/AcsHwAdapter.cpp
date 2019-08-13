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
    if (is_step_rate(20))
    {
      // std::cout << "ADAPTER: resistor_bridge_status[1].bridge_real_value     " << resistor_bridge_status[1].bridge_real_value    << std::endl;
      // std::cout << "ADAPTER: resistor_bridge_status[2].bridge_real_value     " << resistor_bridge_status[2].bridge_real_value    << std::endl;
      // std::cout << "ADAPTER: resistor_bridge_status[3].bridge_real_value     " << resistor_bridge_status[3].bridge_real_value    << std::endl;
      // std::cout << "ADAPTER: resistor_bridge_status[4].bridge_real_value     " << resistor_bridge_status[4].bridge_real_value    << std::endl;
      // std::cout << "ADAPTER: resistor_bridge_status[5].bridge_real_value     " << resistor_bridge_status[5].bridge_real_value    << std::endl;
      // std::cout << "ADAPTER: resistor_bridge_status[6].bridge_real_value     " << resistor_bridge_status[6].bridge_real_value    << std::endl;
        // std::cout << "<ADAPTER Boolean sent     on digital channel    " << digital_out.digital_out_1_value << ">" << std::endl;
        // std::cout << "<ADAPTER Boolean received on digital channel    " << digital_in.digital_in_1_value   << ">" << std::endl;
        // std::cout << "ADAPTER Boolean sent     on digital channel 2           " << digital_out.digital_out_2_value << std::endl;
        // std::cout << "ADAPTER Boolean received on digital channel 2           " << digital_in.digital_in_2_value   << std::endl;
    }
}

void AcsHwAdapter::setup()
{
    //setup async input handlers

    //ex: new_async_input_handler ("my_input_name", this, &AcsHwAdapter::my_input_handler);

    //add behaviors to features

    //other initializations

}
