#ifndef _M1acsMainCtrl_h_
#define _M1acsMainCtrl_h_


#include "M1acsMainCtrlBase.h"

namespace gmt
{

class M1acsMainCtrl : public M1acsMainCtrlBase
{
    public:
        M1acsMainCtrl(
                        const  std::string& comp_uri,
                        const  std::string& comp_name,
                        const  std::string& comp_host,
                        int    comp_port,
                        const  std::string& comp_acl,
                        double comp_scan_rate = 1.0,
                        int comp_prio = GMT_THREAD_DEFAULT_PRIO,
                        int comp_stack_size = GMT_DEFAULT_STACK_SIZE);

        virtual ~M1acsMainCtrl();

        //XXX add your public methods here

    protected:

        virtual void step() override;
        virtual void setup() override;

        //XXX add your protected class members here

    private:

        //XXX add your private class members here
};

} // namespace gmt

#endif   // _M1acsMainCtrl_h_
