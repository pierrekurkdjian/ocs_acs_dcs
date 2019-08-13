#include "AcsHwAdapter.h"

using namespace std;
using namespace gmt;

void run() {
    try
    {
        // create instances
        AcsHwAdapter acs_hw1_adapter("gmt://127.0.0.1/acs_dcs/acs_hw1_adapter", "acs_hw1_adapter", "127.0.0.1", 9020, "PRIVATE", 100);

        // start instances
        acs_hw1_adapter.start();

        // wait until components finish
        acs_hw1_adapter.wait();
    }
    catch(std::runtime_error& e) { cerr<<"ERROR in acs_hw_adapter_app: "<<e.what()<<endl;            }
    catch(std::exception& e)     { cerr<<"ERROR in acs_hw_adapter_app: "<<e.what()<<endl;            }
    catch(...)                   { cerr<<"ERROR in acs_hw_adapter_app: unknown exception"<<endl; }
}

int main() {
    run();
    return(0);
}
