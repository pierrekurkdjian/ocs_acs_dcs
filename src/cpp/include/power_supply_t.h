#ifndef _power_supply_t_h_
#define _power_supply_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct power_supply_t {
    bool                     power_on;            // power_on
    bool                     power_overload;      // power_overload
    MSGPACK_DEFINE_MAP(power_on, power_overload)
};


#endif // _power_supply_t_h_
