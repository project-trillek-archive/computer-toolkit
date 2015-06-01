# Trillek Computer Toolkit
Computer development tools for Trillek's computer v0.2.0

## Get it

Download the tar.gz files for your operating system. doc.tgz contains
documentation about both assemblers and vlink.

## Tools included

- WaveAsm : Assembler
- VASM : Assembler
- VLINK : Linker for VASM vobj files
- SmallerC core (smlc) : Tiny C compiler 

## Build
Simply do :
1. ```make git_submodule``` to initiate git submodules
2. ```make ``` to build it

To generate Windows binary files (cross-compile), is necesary to have installed
mingw32 and launch make with the apropiated CC value. For example
```make CC=i686-w64-mingw32-gcc LD=i686-w64-mingw32-gcc BINEXT=.exe``` or ```make CC=i586-mingw32msvc-gcc LD=i586-mingw32msvc-gcc BINEXT=.exe```

Also, you can generate documentation files of vasm and vlink with ```make doc```

### Install
```sudo make install``` would install in your system :

- vasm-tr3200
- vlink
- smlrc-tr3200
- WaveAsm

## How use the toolchain
Preliminar documentation and examples resides on Trillek wiki :

- http://wiki.trillek.org/wiki/VASM
- http://wiki.trillek.org/wiki/SmallerC

## TODO

- Generate Ubuntu x32 binaries
- Generate Mac OS X binaries

