#ifndef _m1acs_coeff_load_cell_t_h_
#define _m1acs_coeff_load_cell_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct m1acs_coeff_load_cell_t {
    uint32_t                 serial_number;       // serial number of each sensor
    float                    compression_a0;      // a0
    float                    compression_a1;      // a1*V
    float                    compression_a2;      // a2*V*V
    float                    tension_a0;          // a0
    float                    tension_a1;          // a1*V
    float                    tension_a2;          // a2*V*V
    MSGPACK_DEFINE_MAP(serial_number, compression_a0, compression_a1, compression_a2, tension_a0, tension_a1, tension_a2)
};


#endif // _m1acs_coeff_load_cell_t_h_
