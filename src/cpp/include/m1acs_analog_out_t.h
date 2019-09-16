#ifndef _m1acs_analog_out_t_h_
#define _m1acs_analog_out_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct m1acs_analog_out_t {
    uint16_t                 analog_out_1_value;  // analog_out_1_value
    uint16_t                 analog_out_2_value;  // analog_out_2_value
    MSGPACK_DEFINE_MAP(analog_out_1_value, analog_out_2_value)
};


#endif // _m1acs_analog_out_t_h_
