#include "system.h"

void putc(u8 c, u8 fg, u8 bg)
{
  u8* location;
  location = (u8*) VIDMEM;

  *location = c | (((bg << 4) | fg) << 8);
}
