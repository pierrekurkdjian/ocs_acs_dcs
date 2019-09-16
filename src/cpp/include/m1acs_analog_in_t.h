#ifndef _m1acs_analog_in_t_h_
#define _m1acs_analog_in_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct m1acs_analog_in_t {
    uint16_t                 analog_in_1_value;   // analog_in_1_value
    uint16_t                 analog_in_2_value;   // analog_in_2_value
    MSGPACK_DEFINE_MAP(analog_in_1_value, analog_in_2_value)
};


#endif // _m1acs_analog_in_t_h_
