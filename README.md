# Gvln-OS

A minimalist 32-bit operating system kernel developed as a learning project to explore low-level software-hardware interaction and kernel fundamentals.

## Features
* **Architecture**: x86 32-bit (i386).
* **Boot Protocol**: Multiboot compliant.
* **Display**: Custom VGA text mode driver (80x25) with color support.
* **Core**: Written in C and Assembly with a freestanding environment.

## Development Environment
This project is developed on **Debian** using a cross-compiler toolchain.
* **Target**: `i686-elf`
* **Assembler**: `i686-elf-as`
* **Compiler**: `i686-elf-gcc` (GNU99 standard)
* **Linker**: Custom script (`linker.ld`) for memory layout.

## Project Structure
* **`boot.s`**: Entry point that sets up the stack and hands control to the kernel.
* **`kernel.c`**: Main kernel logic and terminal initialization.
* **`vga.h`**: VGA hardware constants and color definitions.
* **`linker.ld`**: Defines the physical memory layout of the binary.
* **`build.sh`**: Automation script for compilation and linking.

## Compilation
To compile the kernel, use the provided build script:
```bash
chmod +x build.sh
./build.sh
```

The output binary will be located at ./output/gvln-os, use QEMU to verify the implementation.

```bash
qemu-system-i386 -cdrom ./output/gvln-os.iso
```
