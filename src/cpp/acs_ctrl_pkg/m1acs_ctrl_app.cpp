#include <string>
#include <memory>

#include <ocs_core_fwk.h>

#include "./m1acs_main_ctrl/M1acsMainCtrl.h"
#include "./m1acs_hw_adapter/M1acsHwAdapter.h"

using namespace std;
using namespace gmt;

class M1acsCtrlPkgApp : public CoreApplication
{
    public:

        M1acsCtrlPkgApp();

        virtual ~M1acsCtrlPkgApp();

        virtual void start(int argc, char* argv[]);

    protected:

        CLIHandler cli;
};

M1acsCtrlPkgApp::M1acsCtrlPkgApp()
 : CoreApplication()
 , cli("M1acsCtrlPkg application", "GMT_")
{
    //setup command line
    cli.add_option<string> ("config",  "Name of the configuration snapshot to apply", "default", "")
       .add_option<string> ("logging", "Logging level", "info")
       .add_option<string> ("ctnr_config", "Name of the container configuration file", "default")
       .add_option<void>   ("help",    "Show help");

    auto cntr = make_unique<CoreContainer>();

    // create m1acs_main_ctrl instances
    cntr->add (make_unique<M1acsMainCtrl>("gmt://127.0.0.1/m1acs_dcs/m1acs_main_ctrl", "m1acs_main_ctrl", "127.0.0.1", 8020, "PRIVATE", 100));

    // create m1acs_hw_adapter instances
    cntr->add (make_unique<M1acsHwAdapter>("gmt://127.0.0.1/m1acs_dcs/m1acs_hw1_adapter", "m1acs_hw1_adapter", "127.0.0.1", 9020, "PRIVATE", 100));

    // create m1acs_ctrl_app instances


    this->add (std::move(cntr));
}

M1acsCtrlPkgApp::~M1acsCtrlPkgApp()
{
}

void M1acsCtrlPkgApp::start(int argc, char* argv[])
{
    CoreApplication::initialize_rt_system();

    cli.parse_cmd_line (argc, argv, true);

    if (cli.is_opt("help"))
    {
        cout<<cli<<endl;
    }
    else
    {
        auto cli_opts = cli.get_opt_values();
        configure (*cli_opts);
        CoreApplication::start ();
    }
}

int main (int argc, char* argv[])
{
    //create the application
    M1acsCtrlPkgApp m1acs_ctrl_pkg_app;

    try
    {
        //configure and start the application
        m1acs_ctrl_pkg_app.start (argc, argv);

        //wait until execution end
        m1acs_ctrl_pkg_app.wait();
    }
    catch(std::runtime_error& e) { cerr<<"ERROR in m1acs_ctrl_pkg_app: "<<e.what()<<endl;            }
    catch(std::exception& e)     { cerr<<"ERROR in m1acs_ctrl_pkg_app: "<<e.what()<<endl;            }
    catch(...)                   { cerr<<"ERROR in m1acs_ctrl_pkg_app: unknown exception"<<endl; }

    return 0;
}
