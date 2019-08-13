#ifndef _AcsHwAdapter_h_
#define _AcsHwAdapter_h_


#include "AcsHwAdapterBase.h"

namespace gmt
{

class AcsHwAdapter : public AcsHwAdapterBase
{
    public:
        AcsHwAdapter(
                        const  std::string& comp_uri,
                        const  std::string& comp_name,
                        const  std::string& comp_host,
                        int    comp_port,
                        const  std::string& comp_acl,
                        double comp_scan_rate = 1.0,
                        int comp_prio = GMT_THREAD_DEFAULT_PRIO,
                        int comp_stack_size = GMT_DEFAULT_STACK_SIZE);

        virtual ~AcsHwAdapter();

        //XXX add your public methods here

    protected:

        virtual void step() override;
        virtual void setup() override;

        //XXX add your protected class members here

    private:

        //XXX add your private class members here
};

} // namespace gmt

#endif   // _AcsHwAdapter_h_
