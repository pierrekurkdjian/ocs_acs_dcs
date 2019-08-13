#include <string>
#include <memory>

#include <ocs_core_fwk.h>

#include "./acs_main_ctrl/AcsMainCtrl.h"
#include "./acs_hw_adapter/AcsHwAdapter.h"

using namespace std;
using namespace gmt;

class AcsCtrlPkgApp : public CoreApplication
{
    public:

        AcsCtrlPkgApp();

        virtual ~AcsCtrlPkgApp();

        virtual void start(int argc, char* argv[]);

    protected:

        CLIHandler cli;
};


AcsCtrlPkgApp::AcsCtrlPkgApp()
 : CoreApplication()
 , cli("AcsCtrlPkg application", "GMT_")
{
    //setup command line
    cli.add_option<string> ("config",  "Name of the configuration snapshot to apply", "default", "")
       .add_option<string> ("logging", "Logging level", "info")
       .add_option<string> ("ctnr_config", "Name of the container configuration file", "default")
       .add_option<void>   ("help",    "Show help");

    auto cntr = make_unique<CoreContainer>();

    // create acs_main_ctrl instances
    cntr->add (make_unique<AcsMainCtrl>("gmt://127.0.0.1/acs_dcs/acs_main_ctrl", "acs_main_ctrl", "127.0.0.1", 8020, "PRIVATE", 100));

    // create acs_hw_adapter instances
    cntr->add (make_unique<AcsHwAdapter>("gmt://127.0.0.1/acs_dcs/acs_hw1_adapter", "acs_hw1_adapter", "127.0.0.1", 9020, "PRIVATE", 100));

    // create acs_ctrl_app instances


    this->add (std::move(cntr));
}

AcsCtrlPkgApp::~AcsCtrlPkgApp()
{
}

void AcsCtrlPkgApp::start(int argc, char* argv[])
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
    AcsCtrlPkgApp acs_ctrl_pkg_app;

    try
    {
        //configure and start the application
        acs_ctrl_pkg_app.start (argc, argv);

        //wait until execution end
        acs_ctrl_pkg_app.wait();
    }
    catch(std::runtime_error& e) { cerr<<"ERROR in acs_ctrl_pkg_app: "<<e.what()<<endl;            }
    catch(std::exception& e)     { cerr<<"ERROR in acs_ctrl_pkg_app: "<<e.what()<<endl;            }
    catch(...)                   { cerr<<"ERROR in acs_ctrl_pkg_app: unknown exception"<<endl; }

    return 0;
}
