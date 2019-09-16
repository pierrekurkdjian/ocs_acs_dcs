// GMT AUTO GENERATED CODE

#include "M1acsMainCtrlSetup.h"
#include "M1acsMainCtrlBase.h"

using namespace std;
using namespace gmt;

M1acsMainCtrlBase::M1acsMainCtrlBase(
                            const string& comp_uri,
                            const string& comp_name,
                            const string& comp_host,
                            int comp_port,
                            const string& comp_acl,
                            double comp_scan_rate,
                            int comp_prio,
                            int comp_stack_size)
    : BaseController(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate, comp_prio, comp_stack_size)
    
    
    
{
}

M1acsMainCtrlBase::~M1acsMainCtrlBase()
{
}

void M1acsMainCtrlBase::create_state()
{
    //create the features inherited from the base class
    Base::create_state();

    //create the input dataio of the class, and assign the default value
    new_input_dataio(digital_in,                "digital_in",            m1acs_digital_in_t());
    new_input_dataio(analog_in,                 "analog_in",             m1acs_analog_in_t());
    new_input_dataio(ssi_in,                    "ssi_in",                std::array<m1acs_ssi_in_t, 4>());
    new_input_dataio(power_supply,              "power_supply",          std::array<m1acs_power_supply_t, 4>());
    new_input_dataio(resistor_bridge_status,    "resistor_bridge_status", std::array<m1acs_resistor_bridge_status_t, 7>());
    new_input_dataio(digital_out_ext,           "digital_out_ext",       m1acs_digital_out_t());
    new_input_dataio(analog_out_ext,            "analog_out_ext",        m1acs_analog_out_t());
    new_input_dataio(power_supply_ext,          "power_supply_ext",      std::array<m1acs_power_supply_t, 4>());
    new_input_dataio(resistor_bridge_status_ext, "resistor_bridge_status_ext", std::array<m1acs_resistor_bridge_status_t, 7>());

    //create the output dataio of the class, and assign the default value
    new_output_dataio(digital_out,               "digital_out",           m1acs_digital_out_t());
    new_output_dataio(analog_out,                "analog_out",            m1acs_analog_out_t());
    new_output_dataio(resistor_bridge_control,   "resistor_bridge_control", std::array<m1acs_resistor_bridge_control_t, 7>());
    new_output_dataio(digital_in_ext,            "digital_in_ext",        m1acs_digital_in_t());
    new_output_dataio(analog_in_ext,             "analog_in_ext",         m1acs_analog_in_t());
    new_output_dataio(resistor_bridge_control_ext, "resistor_bridge_control_ext", std::array<m1acs_resistor_bridge_control_t, 7>());

    //create the state vars of the class and assign the "class" default value

    //create the properties of the class and assign the "class" default value
    new_property(bridge_float_value_calculated, "bridge_float_value_calculated", float());
    new_property(coeff_load_cell_1,         "coeff_load_cell_1",     m1acs_coeff_load_cell_t());
    new_property(coeff_load_cell_2,         "coeff_load_cell_2",     m1acs_coeff_load_cell_t());
    new_property(coeff_load_cell_3,         "coeff_load_cell_3",     m1acs_coeff_load_cell_t());
    new_property(coeff_load_cell_4,         "coeff_load_cell_4",     m1acs_coeff_load_cell_t());
    new_property(coeff_load_cell_5,         "coeff_load_cell_5",     m1acs_coeff_load_cell_t());
    new_property(coeff_load_cell_6,         "coeff_load_cell_6",     m1acs_coeff_load_cell_t());
}

//reads and unpacks the configuration file, and calls the setup() method with
//the decoded configuration
void M1acsMainCtrlBase::configure_from_file (const std::string& fname)
{
    try
    {
        log_info ("Configure from file "+fname);
        Setup conf;

        load_conf_file (fname, conf);
        setup_wrapper (conf);
    }
    catch (std::exception& ex)
    {
        throw std::runtime_error("ERROR while opening configuration file "+fname+": "+ex.what());
    }
    catch (...)
    {
        throw std::runtime_error("ERROR while opening configuration file "+fname);
    }

    log_info ("Configuration applied!");
}

void M1acsMainCtrlBase::setup_state(ComponentSetup& config)
{
    Setup::StateVarConf&  sv_conf        = dynamic_cast<Setup&>(config).state_vars;
    Setup::InputConf&     input_confs    = dynamic_cast<Setup&>(config).inputs;
    Setup::OutputConf&    output_confs   = dynamic_cast<Setup&>(config).outputs;
    Setup::PropertyConf&  property_confs = dynamic_cast<Setup&>(config).properties;

    log_info("state setup");

    // create inputs
    new_input_dataio(digital_in,                "digital_in",            input_confs.digital_in);
    new_input_dataio(analog_in,                 "analog_in",             input_confs.analog_in);
    new_input_dataio(ssi_in,                    "ssi_in",                input_confs.ssi_in);
    new_input_dataio(power_supply,              "power_supply",          input_confs.power_supply);
    new_input_dataio(resistor_bridge_status,    "resistor_bridge_status", input_confs.resistor_bridge_status);
    new_input_dataio(digital_out_ext,           "digital_out_ext",       input_confs.digital_out_ext);
    new_input_dataio(analog_out_ext,            "analog_out_ext",        input_confs.analog_out_ext);
    new_input_dataio(power_supply_ext,          "power_supply_ext",      input_confs.power_supply_ext);
    new_input_dataio(resistor_bridge_status_ext, "resistor_bridge_status_ext", input_confs.resistor_bridge_status_ext);

    // create outputs
    new_output_dataio(digital_out,              "digital_out",           output_confs.digital_out);
    new_output_dataio(analog_out,               "analog_out",            output_confs.analog_out);
    new_output_dataio(resistor_bridge_control,  "resistor_bridge_control", output_confs.resistor_bridge_control);
    new_output_dataio(digital_in_ext,           "digital_in_ext",        output_confs.digital_in_ext);
    new_output_dataio(analog_in_ext,            "analog_in_ext",         output_confs.analog_in_ext);
    new_output_dataio(resistor_bridge_control_ext, "resistor_bridge_control_ext", output_confs.resistor_bridge_control_ext);

    // Create state variables
    new_state_var(op_state,                     "op_state",              sv_conf.op_state,             input_confs.op_state_goal,    output_confs.op_state_value);
    new_state_var(sim_mode,                     "sim_mode",              sv_conf.sim_mode,             input_confs.sim_mode_goal,    output_confs.sim_mode_value);
    new_state_var(control_mode,                 "control_mode",          sv_conf.control_mode,         input_confs.control_mode_goal, output_confs.control_mode_value);

    // Create properties
    new_property(uri,                           "uri",                   property_confs.uri);
    new_property(name,                          "name",                  property_confs.name);
    new_property(host,                          "host",                  property_confs.host);
    new_property(port,                          "port",                  property_confs.port);
    new_property(scan_rate,                     "scan_rate",             property_confs.scan_rate);
    new_property(bridge_float_value_calculated, "bridge_float_value_calculated", property_confs.bridge_float_value_calculated);
    new_property(coeff_load_cell_1,             "coeff_load_cell_1",     property_confs.coeff_load_cell_1);
    new_property(coeff_load_cell_2,             "coeff_load_cell_2",     property_confs.coeff_load_cell_2);
    new_property(coeff_load_cell_3,             "coeff_load_cell_3",     property_confs.coeff_load_cell_3);
    new_property(coeff_load_cell_4,             "coeff_load_cell_4",     property_confs.coeff_load_cell_4);
    new_property(coeff_load_cell_5,             "coeff_load_cell_5",     property_confs.coeff_load_cell_5);
    new_property(coeff_load_cell_6,             "coeff_load_cell_6",     property_confs.coeff_load_cell_6);
    new_property(acl,                           "acl",                   property_confs.acl);
    new_property(priority,                      "priority",              property_confs.priority);

}
