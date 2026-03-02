#!/bin/sh

i686-elf-as boot.s -o ./output/boot.o
i686-elf-gcc -c kernel.c -o ./output/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
i686-elf-gcc -T linker.ld -o ./output/gvln-os -ffreestanding -O2 -nostdlib ./output/boot.o ./output/kernel.o -lgcc

grub-file --is-x86-multiboot ./output/gvln-os 
