#include "data_manager.hpp"

DataManager::DataManager(const char *dbName)
{
    this->dbName = dbName;
    // Open database connection
    if(sqlite3_open(this->dbName, &db) != SQLITE_OK) {
        std::cerr << "Can't open database: " << sqlite3_errmsg(db) << std::endl;
        return;
    }
}

DataManager::~DataManager()
{
    sqlite3_close(db);
}

void DataManager::loadBusinesses(const char *sessionId, std::vector<Business> &businesses)
{
    const std::string sql = fmt::v11::format("SELECT id, gather_level, gather_speed, current_experience FROM 'companies' WHERE companies.session_id = '{}'", sessionId);
    // Open database connection
    if(sqlite3_open(dbName, &db) != SQLITE_OK) {
        std::cerr << "Can't open database: " << sqlite3_errmsg(db) << std::endl;
        return;
    }

    // Prepare SQL statement
    if(sqlite3_prepare_v2(db, sql.c_str(), -1, &stmt, nullptr) != SQLITE_OK) {
        std::cerr << "Failed to prepare statement: " << sqlite3_errmsg(db) << std::endl;
        sqlite3_close(db);
        return;
    }

    // Start timing the query execution
    auto start = std::chrono::high_resolution_clock::now();

    // Execute SQL statement
    while(sqlite3_step(stmt) == SQLITE_ROW) {
        int id = sqlite3_column_int(stmt, 0);
        int gather_lvl = sqlite3_column_int(stmt, 1);
        int gather_speed = sqlite3_column_int(stmt, 2);
        double experience = sqlite3_column_double(stmt, 3);
        
        Business business;
        business.id = id;
        business.gather_lvl = gather_lvl;
        business.gather_speed = gather_speed;
        business.experience = experience;

        businesses.push_back(business);
    }

    // Stop timing the query execution
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;
    std::cout << "Query execution time: " << elapsed.count() << " seconds" << std::endl;

    sqlite3_finalize(stmt);
}

void DataManager::printBusinesses(std::vector<Business> &businesses)
{
    for (auto i = businesses.begin(); i != businesses.end(); ++i) {
        std::cout 
            << "ID: " << i->id 
            << " Gather Level: " << i->gather_lvl
            << " Gather Speed: " << i->gather_speed
            << " Exp Speed: " << i->experience
            << std::endl;
	}
}
