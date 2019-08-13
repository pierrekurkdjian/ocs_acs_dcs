#ifndef _digital_out_t_h_
#define _digital_out_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct digital_out_t {
    bool                     digital_out_1_value; // digital_out_1_value
    bool                     digital_out_2_value; // digital_out_2_value
    bool                     digital_out_3_value; // digital_out_3_value
    bool                     digital_out_4_value; // digital_out_4_value
    bool                     digital_out_5_value; // digital_out_5_value
    bool                     digital_out_6_value; // digital_out_6_value
    bool                     digital_out_7_value; // digital_out_7_value
    bool                     digital_out_8_value; // digital_out_8_value
    MSGPACK_DEFINE_MAP(digital_out_1_value, digital_out_2_value, digital_out_3_value, digital_out_4_value, digital_out_5_value, digital_out_6_value, digital_out_7_value, digital_out_8_value)
};


#endif // _digital_out_t_h_
