#include "M1acsHwAdapter.h"

using namespace std;
using namespace gmt;

M1acsHwAdapter::M1acsHwAdapter(
                            const string& comp_uri,
                            const string& comp_name,
                            const string& comp_host,
                            int comp_port,
                            const string& comp_acl,
                            double comp_scan_rate,
                            int comp_prio,
                            int comp_stack_size)
    : M1acsHwAdapterBase(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate, comp_prio, comp_stack_size)
{
    sdo_write_enable = true;
}

M1acsHwAdapter::~M1acsHwAdapter()
{
}

void M1acsHwAdapter::step()
{
    //XXX add your code here

    /*if (is_step_rate(100))
    {
        // this will be executed every 100 steps
        log_info("step  = " + std::to_string(step_counter));
    }*/
}

void M1acsHwAdapter::setup()
{
    //setup async input handlers

    //ex: new_async_input_handler ("my_input_name", this, &M1acsHwAdapter::my_input_handler);

    //add behaviors to features

    //other initializations

}
