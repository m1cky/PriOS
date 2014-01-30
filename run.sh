#!/bin/bash
 
#export PATH="$HOME/opt/cross/i386-elf-4.8.1-Linux-x86_64/bin:$PATH"

#i386-elf-as boot.s -o boot.o
#nasm -felf boot.asm -o boot.o

#i386-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
#i386-elf-gcc -c io.c -o io.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
#i386-elf-gcc -c util.c -o util.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

#i386-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib #boot.o kernel.o io.o util.c -lgcc

cp PriOS.bin isodir/boot/PriOS.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o PriOS.iso isodir

#qemu-system-i386 -cdrom myos.iso
bochs
