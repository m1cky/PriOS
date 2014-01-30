#include "system.h"

u8 DEFAULT_ATTRIBUTES = (((15 << 4) | 0) >> 8);
void putc(char c)
{
  u8* location;
  location = (u8*) VIDMEM;

  *location = c | DEFAULT_ATTRIBUTES;
}
