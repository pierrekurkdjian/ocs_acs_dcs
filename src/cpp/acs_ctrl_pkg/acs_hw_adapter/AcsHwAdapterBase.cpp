// GMT AUTO GENERATED CODE

#include "AcsHwAdapterSetup.h"
#include "AcsHwAdapterBase.h"

using namespace std;
using namespace gmt;

AcsHwAdapterBase::AcsHwAdapterBase(
                            const string& comp_uri,
                            const string& comp_name,
                            const string& comp_host,
                            int comp_port,
                            const string& comp_acl,
                            double comp_scan_rate,
                            int comp_prio,
                            int comp_stack_size)
    : EthercatAdapter(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate, comp_prio, comp_stack_size)

{
}

AcsHwAdapterBase::~AcsHwAdapterBase()
{
}

void AcsHwAdapterBase::create_state()
{
    //create the features inherited from the base class
    Base::create_state();

    //create the input dataio of the class, and assign the default value
    new_input_dataio(digital_out,               "digital_out",           digital_out_t());
    new_input_dataio(analog_out,                "analog_out",            analog_out_t());
    new_input_dataio(resistor_bridge_control,   "resistor_bridge_control", std::array<resistor_bridge_control_t, 7>());

    //create the output dataio of the class, and assign the default value
    new_output_dataio(digital_in,                "digital_in",            digital_in_t());
    new_output_dataio(analog_in,                 "analog_in",             analog_in_t());
    new_output_dataio(power_supply,              "power_supply",          std::array<power_supply_t, 4>());
    new_output_dataio(resistor_bridge_status,    "resistor_bridge_status", std::array<resistor_bridge_status_t, 7>());

    //create the state vars of the class and assign the "class" default value

    //create the properties of the class and assign the "class" default value
}

//reads and unpacks the configuration file, and calls the setup() method with
//the decoded configuration
void AcsHwAdapterBase::configure_from_file (const std::string& fname)
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

void AcsHwAdapterBase::setup_state(ComponentSetup& config)
{
    Setup::StateVarConf&  sv_conf        = dynamic_cast<Setup&>(config).state_vars;
    Setup::InputConf&     input_confs    = dynamic_cast<Setup&>(config).inputs;
    Setup::OutputConf&    output_confs   = dynamic_cast<Setup&>(config).outputs;
    Setup::PropertyConf&  property_confs = dynamic_cast<Setup&>(config).properties;

    log_info("state setup");

    // create inputs
    new_input_dataio(digital_out,               "digital_out",           input_confs.digital_out);
    new_input_dataio(analog_out,                "analog_out",            input_confs.analog_out);
    new_input_dataio(resistor_bridge_control,   "resistor_bridge_control", input_confs.resistor_bridge_control);
    new_input_dataio(sdo_read_update_req,       "sdo_read_update_req",   input_confs.sdo_read_update_req);
    new_input_dataio(sdo_write_enable,          "sdo_write_enable",      input_confs.sdo_write_enable);

    // create outputs
    new_output_dataio(digital_in,               "digital_in",            output_confs.digital_in);
    new_output_dataio(analog_in,                "analog_in",             output_confs.analog_in);
    new_output_dataio(power_supply,             "power_supply",          output_confs.power_supply);
    new_output_dataio(resistor_bridge_status,   "resistor_bridge_status", output_confs.resistor_bridge_status);
    new_output_dataio(sdo_read_update_done,     "sdo_read_update_done",  output_confs.sdo_read_update_done);

    // Create state variables
    new_state_var(op_state,                     "op_state",              sv_conf.op_state,             input_confs.op_state_goal,    output_confs.op_state_value);

    // Create properties
    new_property(uri,                           "uri",                   property_confs.uri);
    new_property(name,                          "name",                  property_confs.name);
    new_property(host,                          "host",                  property_confs.host);
    new_property(port,                          "port",                  property_confs.port);
    new_property(scan_rate,                     "scan_rate",             property_confs.scan_rate);
    new_property(acl,                           "acl",                   property_confs.acl);
    new_property(priority,                      "priority",              property_confs.priority);
    new_property(ecat_cfg_name,                 "ecat_cfg_name",         property_confs.ecat_cfg_name);

    // create data_object references
    create_data_object_ref(digital_in.digital_in_1_value,           "digital_in_1_value");
    create_data_object_ref(digital_in.digital_in_2_value,           "digital_in_2_value");
    create_data_object_ref(digital_out.digital_out_1_value,         "digital_out_1_value");
    create_data_object_ref(digital_out.digital_out_2_value,         "digital_out_2_value");
    create_data_object_ref(analog_in.analog_in_1_value,             "analog_in_1_value");
    create_data_object_ref(analog_in.analog_in_2_value,             "analog_in_2_value");
    create_data_object_ref(analog_out.analog_out_1_value,           "analog_out_1_value");
    create_data_object_ref(analog_out.analog_out_2_value,           "analog_out_2_value");
    create_data_object_ref(power_supply[1].power_on,                "power_1_on");
    create_data_object_ref(power_supply[1].power_overload,          "power_1_overload");
    create_data_object_ref(power_supply[2].power_on,                "power_2_on");
    create_data_object_ref(power_supply[2].power_overload,          "power_2_overload");
    create_data_object_ref(power_supply[3].power_on,                "power_3_on");
    create_data_object_ref(power_supply[3].power_overload,          "power_3_overload");
    create_data_object_ref(resistor_bridge_status[1].bridge_overrange, "bridge_1_overrange");
    create_data_object_ref(resistor_bridge_status[1].bridge_data_invalid, "bridge_1_data_invalid");
    create_data_object_ref(resistor_bridge_status[1].bridge_error,  "bridge_1_error");
    create_data_object_ref(resistor_bridge_status[1].bridge_calibrating, "bridge_1_calibrating");
    create_data_object_ref(resistor_bridge_status[1].bridge_steady_state, "bridge_1_steady_state");
    create_data_object_ref(resistor_bridge_status[1].bridge_sync_error, "bridge_1_sync_error");
    create_data_object_ref(resistor_bridge_status[1].bridge_toggle, "bridge_1_toggle");
    create_data_object_ref(resistor_bridge_status[1].bridge_real_value, "bridge_1_real_value");
    // create_data_object_ref(resistor_bridge_control[1].bridge_start_calibration, "bridge_1_start_calibration");
    // create_data_object_ref(resistor_bridge_control[1].bridge_disable_calibration, "bridge_1_disable_calibration");
    // create_data_object_ref(resistor_bridge_control[1].bridge_input_freeze, "bridge_1_input_freeze");
    // create_data_object_ref(resistor_bridge_control[1].bridge_sample_mode, "bridge_1_sample_mode");
    //create_data_object_ref(resistor_bridge_control[1].bridge_tara,  "bridge_1_tara");
    create_data_object_ref(resistor_bridge_status[2].bridge_overrange, "bridge_2_overrange");
    create_data_object_ref(resistor_bridge_status[2].bridge_data_invalid, "bridge_2_data_invalid");
    create_data_object_ref(resistor_bridge_status[2].bridge_error,  "bridge_2_error");
    create_data_object_ref(resistor_bridge_status[2].bridge_calibrating, "bridge_2_calibrating");
    create_data_object_ref(resistor_bridge_status[2].bridge_steady_state, "bridge_2_steady_state");
    create_data_object_ref(resistor_bridge_status[2].bridge_sync_error, "bridge_2_sync_error");
    create_data_object_ref(resistor_bridge_status[2].bridge_toggle, "bridge_2_toggle");
    create_data_object_ref(resistor_bridge_status[2].bridge_real_value, "bridge_2_real_value");
    // create_data_object_ref(resistor_bridge_control[2].bridge_start_calibration, "bridge_2_start_calibration");
    // create_data_object_ref(resistor_bridge_control[2].bridge_disable_calibration, "bridge_2_disable_calibration");
    // create_data_object_ref(resistor_bridge_control[2].bridge_input_freeze, "bridge_2_input_freeze");
    // create_data_object_ref(resistor_bridge_control[2].bridge_sample_mode, "bridge_2_sample_mode");
    // //create_data_object_ref(resistor_bridge_control[2].bridge_tara,  "bridge_2_tara");
    create_data_object_ref(resistor_bridge_status[3].bridge_overrange, "bridge_3_overrange");
    create_data_object_ref(resistor_bridge_status[3].bridge_data_invalid, "bridge_3_data_invalid");
    create_data_object_ref(resistor_bridge_status[3].bridge_error,  "bridge_3_error");
    create_data_object_ref(resistor_bridge_status[3].bridge_calibrating, "bridge_3_calibrating");
    create_data_object_ref(resistor_bridge_status[3].bridge_steady_state, "bridge_3_steady_state");
    create_data_object_ref(resistor_bridge_status[3].bridge_sync_error, "bridge_3_sync_error");
    create_data_object_ref(resistor_bridge_status[3].bridge_toggle, "bridge_3_toggle");
    create_data_object_ref(resistor_bridge_status[3].bridge_real_value, "bridge_3_real_value");
    // create_data_object_ref(resistor_bridge_control[3].bridge_start_calibration, "bridge_3_start_calibration");
    // create_data_object_ref(resistor_bridge_control[3].bridge_disable_calibration, "bridge_3_disable_calibration");
    // create_data_object_ref(resistor_bridge_control[3].bridge_input_freeze, "bridge_3_input_freeze");
    // create_data_object_ref(resistor_bridge_control[3].bridge_sample_mode, "bridge_3_sample_mode");
    // //create_data_object_ref(resistor_bridge_control[3].bridge_tara,  "bridge_3_tara");
    create_data_object_ref(resistor_bridge_status[4].bridge_overrange, "bridge_4_overrange");
    create_data_object_ref(resistor_bridge_status[4].bridge_data_invalid, "bridge_4_data_invalid");
    create_data_object_ref(resistor_bridge_status[4].bridge_error,  "bridge_4_error");
    create_data_object_ref(resistor_bridge_status[4].bridge_calibrating, "bridge_4_calibrating");
    create_data_object_ref(resistor_bridge_status[4].bridge_steady_state, "bridge_4_steady_state");
    create_data_object_ref(resistor_bridge_status[4].bridge_sync_error, "bridge_4_sync_error");
    create_data_object_ref(resistor_bridge_status[4].bridge_toggle, "bridge_4_toggle");
    create_data_object_ref(resistor_bridge_status[4].bridge_real_value, "bridge_4_real_value");
    // create_data_object_ref(resistor_bridge_control[4].bridge_start_calibration, "bridge_4_start_calibration");
    // create_data_object_ref(resistor_bridge_control[4].bridge_disable_calibration, "bridge_4_disable_calibration");
    // create_data_object_ref(resistor_bridge_control[4].bridge_input_freeze, "bridge_4_input_freeze");
    // create_data_object_ref(resistor_bridge_control[4].bridge_sample_mode, "bridge_4_sample_mode");
    // //create_data_object_ref(resistor_bridge_control[4].bridge_tara,  "bridge_4_tara");
    create_data_object_ref(resistor_bridge_status[5].bridge_overrange, "bridge_5_overrange");
    create_data_object_ref(resistor_bridge_status[5].bridge_data_invalid, "bridge_5_data_invalid");
    create_data_object_ref(resistor_bridge_status[5].bridge_error,  "bridge_5_error");
    create_data_object_ref(resistor_bridge_status[5].bridge_calibrating, "bridge_5_calibrating");
    create_data_object_ref(resistor_bridge_status[5].bridge_steady_state, "bridge_5_steady_state");
    create_data_object_ref(resistor_bridge_status[5].bridge_sync_error, "bridge_5_sync_error");
    create_data_object_ref(resistor_bridge_status[5].bridge_toggle, "bridge_5_toggle");
    create_data_object_ref(resistor_bridge_status[5].bridge_real_value, "bridge_5_real_value");
    // create_data_object_ref(resistor_bridge_control[5].bridge_start_calibration, "bridge_5_start_calibration");
    // create_data_object_ref(resistor_bridge_control[5].bridge_disable_calibration, "bridge_5_disable_calibration");
    // create_data_object_ref(resistor_bridge_control[5].bridge_input_freeze, "bridge_5_input_freeze");
    // create_data_object_ref(resistor_bridge_control[5].bridge_sample_mode, "bridge_5_sample_mode");
    // //create_data_object_ref(resistor_bridge_control[5].bridge_tara,  "bridge_5_tara");
    create_data_object_ref(resistor_bridge_status[6].bridge_overrange, "bridge_6_overrange");
    create_data_object_ref(resistor_bridge_status[6].bridge_data_invalid, "bridge_6_data_invalid");
    create_data_object_ref(resistor_bridge_status[6].bridge_error,  "bridge_6_error");
    create_data_object_ref(resistor_bridge_status[6].bridge_calibrating, "bridge_6_calibrating");
    create_data_object_ref(resistor_bridge_status[6].bridge_steady_state, "bridge_6_steady_state");
    create_data_object_ref(resistor_bridge_status[6].bridge_sync_error, "bridge_6_sync_error");
    create_data_object_ref(resistor_bridge_status[6].bridge_toggle, "bridge_6_toggle");
    create_data_object_ref(resistor_bridge_status[6].bridge_real_value, "bridge_6_real_value");
    // create_data_object_ref(resistor_bridge_control[6].bridge_start_calibration, "bridge_6_start_calibration");
    // create_data_object_ref(resistor_bridge_control[6].bridge_disable_calibration, "bridge_6_disable_calibration");
    // create_data_object_ref(resistor_bridge_control[6].bridge_input_freeze, "bridge_6_input_freeze");
    // create_data_object_ref(resistor_bridge_control[6].bridge_sample_mode, "bridge_6_sample_mode");
    // //create_data_object_ref(resistor_bridge_control[6].bridge_tara,  "bridge_6_tara");
}
