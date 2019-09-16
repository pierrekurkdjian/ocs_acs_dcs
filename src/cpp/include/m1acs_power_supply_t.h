#ifndef _m1acs_power_supply_t_h_
#define _m1acs_power_supply_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct m1acs_power_supply_t {
    bool                     power_on;            // power_on
    bool                     power_overload;      // power_overload
    MSGPACK_DEFINE_MAP(power_on, power_overload)
};


#endif // _m1acs_power_supply_t_h_
