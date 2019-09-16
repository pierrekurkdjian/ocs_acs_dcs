#include "M1acsMainCtrl.h"

using namespace std;
using namespace gmt;

M1acsMainCtrl::M1acsMainCtrl(
                            const string& comp_uri,
                            const string& comp_name,
                            const string& comp_host,
                            int comp_port,
                            const string& comp_acl,
                            double comp_scan_rate,
                            int comp_prio,
                            int comp_stack_size)
    : M1acsMainCtrlBase(comp_uri, comp_name, comp_host, comp_port, comp_acl, comp_scan_rate, comp_prio, comp_stack_size)
{
}

M1acsMainCtrl::~M1acsMainCtrl()
{
}

void M1acsMainCtrl::step()
{
  if (is_step_rate(100))
  {
      digital_out.digital_out_1_value = !digital_out.digital_out_1_value;
      digital_out.digital_out_2_value = !digital_out.digital_out_2_value;
      digital_out.digital_out_3_value = !digital_out.digital_out_3_value;
      digital_out.digital_out_4_value = !digital_out.digital_out_4_value;
      digital_out.digital_out_5_value = !digital_out.digital_out_5_value;
      digital_out.digital_out_6_value = !digital_out.digital_out_6_value;
      digital_out.digital_out_7_value = !digital_out.digital_out_7_value;
      digital_out.digital_out_8_value = !digital_out.digital_out_8_value;

      analog_out.analog_out_1_value += (rand()%20 - 10);
      analog_out.analog_out_2_value += (rand()%20 - 10);
  }
  if (is_step_rate(25))
  {

      bridge_float_value_calculated = ((float)resistor_bridge_status[1].bridge_int_value) / 1000000.0;
      if(bridge_float_value_calculated < 0.0)
          resistor_bridge_status[1].bridge_weight_kg = coeff_load_cell_1.compression_a0 + coeff_load_cell_1.compression_a1*bridge_float_value_calculated + coeff_load_cell_1.compression_a2*bridge_float_value_calculated*bridge_float_value_calculated;
      else
          resistor_bridge_status[1].bridge_weight_kg = coeff_load_cell_1.tension_a0 + coeff_load_cell_1.tension_a1*bridge_float_value_calculated + coeff_load_cell_1.tension_a0*bridge_float_value_calculated*bridge_float_value_calculated;
      bridge_float_value_calculated = ((float)resistor_bridge_status[2].bridge_int_value) / 1000000.0;
      if(bridge_float_value_calculated < 0.0)
          resistor_bridge_status[2].bridge_weight_kg = coeff_load_cell_2.compression_a0 + coeff_load_cell_2.compression_a1*bridge_float_value_calculated + coeff_load_cell_2.compression_a2*bridge_float_value_calculated*bridge_float_value_calculated;
      else
          resistor_bridge_status[2].bridge_weight_kg = coeff_load_cell_2.tension_a0 + coeff_load_cell_2.tension_a1*bridge_float_value_calculated + coeff_load_cell_2.tension_a0*bridge_float_value_calculated*bridge_float_value_calculated;
      bridge_float_value_calculated = ((float)resistor_bridge_status[3].bridge_int_value) / 1000000.0;
      if(bridge_float_value_calculated < 0.0)
          resistor_bridge_status[3].bridge_weight_kg = coeff_load_cell_3.compression_a0 + coeff_load_cell_3.compression_a1*bridge_float_value_calculated + coeff_load_cell_3.compression_a2*bridge_float_value_calculated*bridge_float_value_calculated;
      else
          resistor_bridge_status[3].bridge_weight_kg = coeff_load_cell_3.tension_a0 + coeff_load_cell_3.tension_a1*bridge_float_value_calculated + coeff_load_cell_3.tension_a0*bridge_float_value_calculated*bridge_float_value_calculated;
      bridge_float_value_calculated = ((float)resistor_bridge_status[4].bridge_int_value) / 1000000.0;
      if(bridge_float_value_calculated < 0.0)
          resistor_bridge_status[4].bridge_weight_kg = coeff_load_cell_4.compression_a0 + coeff_load_cell_4.compression_a1*bridge_float_value_calculated + coeff_load_cell_4.compression_a2*bridge_float_value_calculated*bridge_float_value_calculated;
      else
          resistor_bridge_status[4].bridge_weight_kg = coeff_load_cell_4.tension_a0 + coeff_load_cell_4.tension_a1*bridge_float_value_calculated + coeff_load_cell_4.tension_a0*bridge_float_value_calculated*bridge_float_value_calculated;
      bridge_float_value_calculated = ((float)resistor_bridge_status[5].bridge_int_value) / 1000000.0;
      if(bridge_float_value_calculated < 0.0)
          resistor_bridge_status[5].bridge_weight_kg = coeff_load_cell_5.compression_a0 + coeff_load_cell_5.compression_a1*bridge_float_value_calculated + coeff_load_cell_5.compression_a2*bridge_float_value_calculated*bridge_float_value_calculated;
      else
          resistor_bridge_status[5].bridge_weight_kg = coeff_load_cell_5.tension_a0 + coeff_load_cell_5.tension_a1*bridge_float_value_calculated + coeff_load_cell_5.tension_a0*bridge_float_value_calculated*bridge_float_value_calculated;
      bridge_float_value_calculated = ((float)resistor_bridge_status[6].bridge_int_value) / 1000000.0;
      if(bridge_float_value_calculated < 0.0)
          resistor_bridge_status[6].bridge_weight_kg = coeff_load_cell_6.compression_a0 + coeff_load_cell_6.compression_a1*bridge_float_value_calculated + coeff_load_cell_6.compression_a2*bridge_float_value_calculated*bridge_float_value_calculated;
      else
          resistor_bridge_status[6].bridge_weight_kg = coeff_load_cell_6.tension_a0 + coeff_load_cell_6.tension_a1*bridge_float_value_calculated + coeff_load_cell_6.tension_a0*bridge_float_value_calculated*bridge_float_value_calculated;

      std::cout << std::endl;
      std::cout << "step  = " << step_counter << std::endl;
  }
}

void M1acsMainCtrl::setup()
{
    //setup async input handlers
    //ex: new_async_input_handler ("my_input_name", this, &M1acsMainCtrl::my_input_handler);
    //add behaviors to features
    //other initializations
    analog_out.analog_out_1_value = 20000;
    analog_out.analog_out_2_value = 20000;
    for(m1acs_resistor_bridge_control_t load_cell_module : resistor_bridge_control)
    {
        load_cell_module.bridge_tara           = true;
        load_cell_module.bridge_gain           = 1;
        load_cell_module.bridge_rated_output   = 2;
        load_cell_module.bridge_nominal_load   = 1;
        load_cell_module.bridge_scale_factor   = 1e+06;
        load_cell_module.bridge_reference_load = 5;
    }
}
