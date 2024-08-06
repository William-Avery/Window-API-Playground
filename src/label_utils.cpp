#include "label_utils.hpp"

HWND CreateLabel(HWND hwndParent, HINSTANCE hInstance, LPCSTR text, int x, int y, int width, int height, HFONT hFont)
{
    HWND hLabel = CreateWindowEx(
        0,
        "STATIC",
        text,
        WS_CHILD | WS_VISIBLE | SS_CENTER,
        x, y,
        width, height,
        hwndParent,
        NULL,
        hInstance,
        NULL
    );

    SendMessage(hLabel, WM_SETFONT, (WPARAM)hFont, TRUE);
    return hLabel;
}
