#ifndef DATABASE_MANAGER_HPP
#define DATABASE_MANAGER_HPP

#include <vector>
#include <chrono>
#include <vector>
#include <iostream>
#include <fmt/core.h>
#include "business.hpp"

#include "sqlite/sqlite3.h"

class DataManager
{
public:
    DataManager(const char* dbName);
    ~DataManager();

public:
    void loadBusinesses(const char *sessionId, std::vector<Business>& businesses);
    void printBusinesses(std::vector<Business>& businesses);

private:
    const char* dbName;
    sqlite3* db;
    sqlite3_stmt* stmt;
};

#endif