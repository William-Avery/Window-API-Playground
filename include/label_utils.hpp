#ifndef LABELUTILS_H
#define LABELUTILS_H

#include <windows.h>

HWND CreateLabel(HWND hwndParent, HINSTANCE hInstance, LPCSTR text, int x, int y, int width, int height, HFONT hFont);

#endif // LABELUTILS_H