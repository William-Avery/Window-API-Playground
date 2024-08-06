#ifndef FONTUTILS_H
#define FONTUTILS_H

#include <windows.h>

HFONT LoadCustomFont(LPCSTR fontPath, int fontSize);
void UnloadCustomFont(LPCSTR fontPath);

#endif // FONTUTILS_H