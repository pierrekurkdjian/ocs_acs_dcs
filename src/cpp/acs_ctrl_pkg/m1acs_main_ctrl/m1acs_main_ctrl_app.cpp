#include "M1acsMainCtrl.h"

using namespace std;
using namespace gmt;

void run() {
    try
    {
        // create instances
        M1acsMainCtrl m1acs_main_ctrl("gmt://127.0.0.1/m1acs_dcs/m1acs_main_ctrl", "m1acs_main_ctrl", "127.0.0.1", 8020, "PRIVATE", 100);

        // start instances
        m1acs_main_ctrl.start();

        // wait until components finish
        m1acs_main_ctrl.wait();
    }
    catch(std::runtime_error& e) { cerr<<"ERROR in m1acs_main_ctrl_app: "<<e.what()<<endl;            }
    catch(std::exception& e)     { cerr<<"ERROR in m1acs_main_ctrl_app: "<<e.what()<<endl;            }
    catch(...)                   { cerr<<"ERROR in m1acs_main_ctrl_app: unknown exception"<<endl; }
}

int main() {
    run();
    return(0);
}
