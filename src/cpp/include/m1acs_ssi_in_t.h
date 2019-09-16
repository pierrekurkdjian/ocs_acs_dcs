#ifndef _m1acs_ssi_in_t_h_
#define _m1acs_ssi_in_t_h_

#include <msgpack.hpp>
#include <string>
#include <array>
#include <vector>

struct m1acs_ssi_in_t {
    bool                     ssi_in_1_data_error; // ssi_in_1_data_error
    bool                     ssi_in_1_frame_error; // ssi_in_1_frame_error
    bool                     ssi_in_1_power_error; // ssi_in_1_power_error
    bool                     ssi_in_1_data_mismatch; // ssi_in_1_data_mismatch
    bool                     ssi_in_1_sync_error; // ssi_in_1_sync_error
    uint32_t                 ssi_in_1_value;      // ssi_in_1_value
    bool                     ssi_in_2_data_error; // ssi_in_2_data_error
    bool                     ssi_in_2_frame_error; // ssi_in_2_frame_error
    bool                     ssi_in_2_power_error; // ssi_in_2_power_error
    bool                     ssi_in_2_data_mismatch; // ssi_in_2_data_mismatch
    bool                     ssi_in_2_sync_error; // ssi_in_2_sync_error
    uint32_t                 ssi_in_2_value;      // ssi_in_2_value
    MSGPACK_DEFINE_MAP(ssi_in_1_data_error, ssi_in_1_frame_error, ssi_in_1_power_error, ssi_in_1_data_mismatch, ssi_in_1_sync_error, ssi_in_1_value, ssi_in_2_data_error, ssi_in_2_frame_error, ssi_in_2_power_error, ssi_in_2_data_mismatch, ssi_in_2_sync_error, ssi_in_2_value)
};


#endif // _m1acs_ssi_in_t_h_
