# Trillek Computer Toolkit
Computer development tools for Trillek's computer

## Get it

Download the tar.gz files for your operating system. doc.tgz contains
documentation about both assembler

## Tools included

- WaveAsm : Assembler
- VASM : Assembler
- VLINK : Linker for VASM vobj files
- SmallerC core (smlc) : C compiler without preprocesor

## Build
Simply do ```make```.

To generate Windows binary files (cross-compile), is necesary to have installed
mingw32 and launch make with the apropiated CC value. For example
```make CC=i686-w64-mingw32-gcc```
**WARNING** : Cross-compile looks that is broken on Ubuntu 15.04


### Install
```sudo make install``` would install in your system :

- vasm-tr3200
- vlink
- smlrc-tr3200

## How use the toolchain
Preliminar documentation and examples resides on Trillek wiki : http://wiki.trillek.org/wiki/VASM

## TODO

- Generate Ubuntu x32 binaries
- Generate Mac OS X binaries
- Install WaveAsm

