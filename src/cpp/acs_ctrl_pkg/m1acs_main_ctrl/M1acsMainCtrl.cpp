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
      std::cout << std::endl;
      std::cout << "power_supply[1].power_on                                    " << power_supply[1].power_on           << std::endl;
      std::cout << "power_supply[1].power_overload                              " << power_supply[1].power_overload     << std::endl;
      std::cout << "power_supply[2].power_on                                    " << power_supply[2].power_on           << std::endl;
      std::cout << "power_supply[2].power_overload                              " << power_supply[2].power_overload     << std::endl;
      std::cout << "power_supply[3].power_on                                    " << power_supply[3].power_on           << std::endl;
      std::cout << "power_supply[3].power_overload                              " << power_supply[3].power_overload     << std::endl;
      std::cout << std::endl;
      std::cout << "Boolean sent     on digital channel 1                       " << digital_out.digital_out_1_value << std::endl;
      std::cout << "Boolean received on digital channel 1                       " << digital_in.digital_in_1_value   << std::endl;
      std::cout << "Boolean sent     on digital channel 2                       " << digital_out.digital_out_2_value << std::endl;
      std::cout << "Boolean received on digital channel 2                       " << digital_in.digital_in_2_value   << std::endl;
      std::cout << "Boolean sent     on digital channel 3                       " << digital_out.digital_out_3_value << std::endl;
      std::cout << "Boolean received on digital channel 3                       " << digital_in.digital_in_3_value   << std::endl;
      std::cout << "Boolean sent     on digital channel 4                       " << digital_out.digital_out_4_value << std::endl;
      std::cout << "Boolean received on digital channel 4                       " << digital_in.digital_in_4_value   << std::endl;
      std::cout << "Boolean sent     on digital channel 5                       " << digital_out.digital_out_5_value << std::endl;
      std::cout << "Boolean received on digital channel 5                       " << digital_in.digital_in_5_value   << std::endl;
      std::cout << "Boolean sent     on digital channel 6                       " << digital_out.digital_out_6_value << std::endl;
      std::cout << "Boolean received on digital channel 6                       " << digital_in.digital_in_6_value   << std::endl;
      std::cout << "Boolean sent     on digital channel 7                       " << digital_out.digital_out_7_value << std::endl;
      std::cout << "Boolean received on digital channel 7                       " << digital_in.digital_in_7_value   << std::endl;
      std::cout << "Boolean sent     on digital channel 8                       " << digital_out.digital_out_8_value << std::endl;
      std::cout << "Boolean received on digital channel 8                       " << digital_in.digital_in_8_value   << std::endl;
      std::cout << std::endl;
      std::cout << "Integer sent     on analog  channel 1                       " << analog_out.analog_out_1_value   << std::endl;
      std::cout << "Integer received on analog  channel 1                       " << analog_in.analog_in_1_value     << std::endl;
      std::cout << "Integer sent     on analog  channel 2                       " << analog_out.analog_out_2_value   << std::endl;
      std::cout << "Integer received on analog  channel 2                       " << analog_in.analog_in_2_value     << std::endl;
      std::cout << std::endl;
      std::cout << "Integer received on SSI module 1 channel 1                  " << ssi_in[1].ssi_in_1_value     << std::endl;
      std::cout << "Integer received on SSI module 2 channel 1                  " << ssi_in[2].ssi_in_1_value     << std::endl;
      std::cout << "Integer received on SSI module 3 channel 1                  " << ssi_in[3].ssi_in_1_value     << std::endl;
      std::cout << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_int_value                  " << resistor_bridge_status[1].bridge_int_value    << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_steady_state               " << resistor_bridge_status[1].bridge_steady_state  << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_weight_kg                  " << resistor_bridge_status[1].bridge_weight_kg     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_overrange                  " << resistor_bridge_status[1].bridge_overrange     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_data_invalid               " << resistor_bridge_status[1].bridge_data_invalid     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_error                      " << resistor_bridge_status[1].bridge_error     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_calibrating                " << resistor_bridge_status[1].bridge_calibrating     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_sync_error                 " << resistor_bridge_status[1].bridge_sync_error     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_toggle                     " << resistor_bridge_status[1].bridge_toggle     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_mode0_enable_filter        " << resistor_bridge_status[1].bridge_mode0_enable_filter     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_mode1_enable_filter        " << resistor_bridge_status[1].bridge_mode1_enable_filter     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_mode0_enable_averager      " << resistor_bridge_status[1].bridge_mode0_enable_averager     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_mode1_enable_averager      " << resistor_bridge_status[1].bridge_mode1_enable_averager     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_mode0_filter_settings      " << resistor_bridge_status[1].bridge_mode0_filter_settings     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_mode1_filter_settings      " << resistor_bridge_status[1].bridge_mode1_filter_settings     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_dynamic_filter_change_time " << resistor_bridge_status[1].bridge_dynamic_filter_change_time     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_dynamic_filter_delta       " << resistor_bridge_status[1].bridge_dynamic_filter_delta     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_filter_settings            " << resistor_bridge_status[1].bridge_filter_settings     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_gain                       " << resistor_bridge_status[1].bridge_gain     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_tara_float                 " << resistor_bridge_status[1].bridge_tara_float     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_rated_output               " << resistor_bridge_status[1].bridge_rated_output     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_nominal_load               " << resistor_bridge_status[1].bridge_nominal_load     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_filter_zero_balance        " << resistor_bridge_status[1].bridge_filter_zero_balance     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_gravity_of_earth           " << resistor_bridge_status[1].bridge_gravity_of_earth     << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_scale_factor               " << resistor_bridge_status[1].bridge_scale_factor     << std::endl;
      std::cout << "tresistor_bridge_status[1].bridge_reference_load            " << resistor_bridge_status[1].bridge_reference_load     << std::endl;
      std::cout << std::endl;
      std::cout << "resistor_bridge_status[1].bridge_serial_number             " << resistor_bridge_status[1].bridge_serial_number     << std::endl;
      std::cout << "coeff_load_cell_1.bridge_serial_number                     " << coeff_load_cell_1.serial_number     << std::endl;
      std::cout << "coeff_load_cell_1.compression_a0                           " << coeff_load_cell_1.compression_a0     << std::endl;
      std::cout << "coeff_load_cell_1.compression_a1                           " << coeff_load_cell_1.compression_a1     << std::endl;
      std::cout << "coeff_load_cell_1.compression_a2                           " << coeff_load_cell_1.compression_a2     << std::endl;
      std::cout << std::endl;
      std::cout << "resistor_bridge_status[2].bridge_int_value                 " << resistor_bridge_status[2].bridge_int_value    << std::endl;
      std::cout << "resistor_bridge_status[2].bridge_steady_state              " << resistor_bridge_status[2].bridge_steady_state  << std::endl;
      std::cout << "resistor_bridge_status[3].bridge_int_value                 " << resistor_bridge_status[3].bridge_int_value    << std::endl;
      std::cout << "resistor_bridge_status[3].bridge_steady_state              " << resistor_bridge_status[3].bridge_steady_state  << std::endl;
      std::cout << "resistor_bridge_status[4].bridge_int_value                 " << resistor_bridge_status[4].bridge_int_value    << std::endl;
      std::cout << "resistor_bridge_status[4].bridge_steady_state              " << resistor_bridge_status[4].bridge_steady_state  << std::endl;
      std::cout << "resistor_bridge_status[5].bridge_int_value                 " << resistor_bridge_status[5].bridge_int_value    << std::endl;
      std::cout << "resistor_bridge_status[5].bridge_steady_state              " << resistor_bridge_status[5].bridge_steady_state  << std::endl;
      std::cout << "resistor_bridge_status[6].bridge_int_value                 " << resistor_bridge_status[6].bridge_int_value    << std::endl;
      std::cout << "resistor_bridge_status[6].bridge_steady_state              " << resistor_bridge_status[6].bridge_steady_state  << std::endl;
      std::cout << std::endl;
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
