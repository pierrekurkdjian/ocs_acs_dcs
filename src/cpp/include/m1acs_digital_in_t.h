#ifndef _m1acs_digital_in_t_h_
#define _m1acs_digital_in_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct m1acs_digital_in_t {
    bool                     digital_in_1_value;  // digital_in_1_value
    bool                     digital_in_2_value;  // digital_in_2_value
    bool                     digital_in_3_value;  // digital_in_3_value
    bool                     digital_in_4_value;  // digital_in_4_value
    bool                     digital_in_5_value;  // digital_in_5_value
    bool                     digital_in_6_value;  // digital_in_6_value
    bool                     digital_in_7_value;  // digital_in_7_value
    bool                     digital_in_8_value;  // digital_in_8_value
    MSGPACK_DEFINE_MAP(digital_in_1_value, digital_in_2_value, digital_in_3_value, digital_in_4_value, digital_in_5_value, digital_in_6_value, digital_in_7_value, digital_in_8_value)
};


#endif // _m1acs_digital_in_t_h_
