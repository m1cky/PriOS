/* system.h */

#define VIDMEM 0xB8000

typedef unsigned int    u32;
typedef           int    s32;
typedef unsigned short u16;
typedef           short s16;
typedef unsigned char   u8;
typedef           char   s8;

/* system.h */

u8* location;

void putc(u8 c, u8 fg, u8 bg)
{
  location = VIDMEM;
  *location = c | (((bg << 4) | fg) << 8);
}

int kmain()
{
  putc('P', 0, 15);
  return 0;
}
