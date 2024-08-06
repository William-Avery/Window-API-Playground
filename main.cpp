#define UNICODE
#define _UNICODE

#include <string>
#include <vector>
#include <windows.h>

#include "include/business.hpp"
#include "include/data_manager.hpp"
#include "include/font_utils.hpp"
#include "include/label_utils.hpp"


LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
    switch (uMsg) {
        case WM_DESTROY:
            PostQuitMessage(0);
            return 0;
        default:
            return DefWindowProc(hwnd, uMsg, wParam, lParam);
    }
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow) {
    // 1. Load the Database

    // Set database name and SQL query
    const std::string dbName = "server.db";
    const std::string sessionId = "bd98cffd-91ac-4433-abb6-0db1e943c769";
    
    // Create a DatabaseManager object
    DataManager dbm(dbName.c_str());

    // Load businesses from the database into a vector
    std::vector<Business> businesses;
    dbm.loadBusinesses(sessionId.c_str(), businesses);
    dbm.printBusinesses(businesses);

    // 2. Load the Window
    LPCWSTR CLASS_NAME = L"Business Manager Game";

    WNDCLASS wc = { };

    wc.lpfnWndProc = WindowProc;
    wc.hInstance = hInstance;
    wc.lpszClassName = CLASS_NAME;

    // Create a brush with a custom background color (e.g., RGB(255, 255, 255) for white)
    HBRUSH hBrush = CreateSolidBrush(RGB(255, 255, 255)); // Change RGB values for different colors
    wc.hbrBackground = hBrush;

    RegisterClass(&wc);

    // Window Size
    unsigned short width = 800;
    unsigned short height = 600;

    // Center the window
    RECT desktop;
    const HWND hDesktop = GetDesktopWindow();
    GetWindowRect(hDesktop, &desktop);

    int screenWidth = desktop.right;
    int screenHeight = desktop.bottom;

    int xPos = (screenWidth / 2) - (width / 2);
    int yPos = (screenHeight / 2) - (height / 2);

    HWND hwnd = CreateWindowEx(
        0,
        CLASS_NAME,
        CLASS_NAME,
        WS_OVERLAPPEDWINDOW,
        xPos, yPos, width, height,
        NULL,
        NULL,
        hInstance,
        NULL
    );

    if (hwnd == NULL) {
        return 0;
    }

    ShowWindow(hwnd, nCmdShow);

    // Load the font from file
    LPCSTR fontPath = "fonts/MonoLisa-Regular.ttf"; // Update this to the path of your font file
    int fontSize = 24;
    HFONT hFont = LoadCustomFont(fontPath, fontSize);

    // Create the label
    auto item = businesses[0].getId().c_str();
    
    HWND hLabel = CreateLabel(hwnd, hInstance, item, 20, 20, 200, 50, hFont);

    MSG msg = { };
    while (GetMessage(&msg, NULL, 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }


    // Clean up the brush and font
    DeleteObject(hBrush);
    DeleteObject(hFont);

    // Remove the font resource
    UnloadCustomFont(fontPath);

    // 3. Clean up the Database
    businesses.clear();

    return 0;
}

/*
int main()
{
    // 1. Set database name and SQL query
    const std::string dbName = "server.db";
    const std::string sessionId = "bd98cffd-91ac-4433-abb6-0db1e943c769";
    
    // 2. Create a DatabaseManager object
    DataManager dbm(dbName.c_str());

    // 3. Load businesses from the database into a vector
    std::vector<Business> businesses;
    dbm.loadBusinesses(sessionId.c_str(), businesses);
    dbm.printBusinesses(businesses);

    businesses.clear();
    return 0;
}
*/
