#ifndef BUSINESS_HPP
#define BUSINESS_HPP

#include <windows.h>
#include <rpc.h>
#include <string>

#pragma comment(lib, "Rpcrt4.lib")

class Business {
public:
    Business();
    ~Business();

    inline std::string getId() { return std::to_string(id); };
    inline std::string getGatherLvl() { return std::to_string(gather_lvl); };
    inline std::string getGatherSpeed() { return std::to_string(gather_speed); };
    inline std::string getExperience() { return std::to_string(experience); };

public:
    int id;
    int gather_lvl;
    int gather_speed;
    double experience;
};

#endif