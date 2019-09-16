#include "M1acsHwAdapter.h"

using namespace std;
using namespace gmt;

void run() {
    try
    {
        // create instances
        M1acsHwAdapter m1acs_hw1_adapter("gmt://127.0.0.1/m1acs_dcs/m1acs_hw1_adapter", "m1acs_hw1_adapter", "127.0.0.1", 9020, "PRIVATE", 100);

        // start instances
        m1acs_hw1_adapter.start();

        // wait until components finish
        m1acs_hw1_adapter.wait();
    }
    catch(std::runtime_error& e) { cerr<<"ERROR in m1acs_hw_adapter_app: "<<e.what()<<endl;            }
    catch(std::exception& e)     { cerr<<"ERROR in m1acs_hw_adapter_app: "<<e.what()<<endl;            }
    catch(...)                   { cerr<<"ERROR in m1acs_hw_adapter_app: unknown exception"<<endl; }
}

int main() {
    run();
    return(0);
}
