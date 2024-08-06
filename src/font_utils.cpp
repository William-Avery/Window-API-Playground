#include "font_utils.hpp"
#include <wingdi.h> 

HFONT LoadCustomFont(LPCSTR fontPath, int fontSize) {
    AddFontResourceEx(fontPath, FR_PRIVATE, NULL);
    LPCSTR fontName = "Custom Font";

    HFONT hFont = CreateFont(
        fontSize,                  // Height of the font
        0,                         // Width of the font
        0,                         // Escapement
        0,                         // Orientation
        FW_NORMAL,                 // Weight
        FALSE,                     // Italic
        FALSE,                     // Underline
        FALSE,                     // Strikeout
        ANSI_CHARSET,              // Character set identifier
        OUT_DEFAULT_PRECIS,        // Output precision
        CLIP_DEFAULT_PRECIS,       // Clipping precision
        DEFAULT_QUALITY,           // Output quality
        DEFAULT_PITCH | FF_DONTCARE, // Pitch and family
        fontName);                  // Typeface name (should match the internal name of the font in the file)

    return hFont;
}

void UnloadCustomFont(LPCSTR fontPath) {
    RemoveFontResourceEx(fontPath, FR_PRIVATE, NULL);
}