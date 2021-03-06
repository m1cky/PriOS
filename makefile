CC=~/opt/cross/i386-elf-4.8.1-Linux-x86_64/bin/i386-elf-gcc
CFLAGS=
export CFLAGS
LDFLAGS+= -ffreestanding -O2 -Wall -Wextra -nostdlib -nostdinc -fno-builtin -fno-stack-protector
export LDFLAGS
SRC= kernel.c screen.c
OBJ=$(SRC:.c=.o)
DEPS = system.h
EXEC?= PriOS

all: $(boot.o) 
	nasm -felf boot.asm -o boot.o

	$(CC) -c kernel.c -o kernel.o $(LDFLAGS)
	$(CC) -c screen.c -o screen.o $(LDFLAGS)

	$(CC) -T linker.ld -o $(EXEC).bin $(LDFLAGS) boot.o $(OBJ) -lgcc

clean:
	rm -f *~ *.o