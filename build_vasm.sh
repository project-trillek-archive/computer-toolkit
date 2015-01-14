#!/bin/bash

is64="$(uname -a | grep x86_64 | wc -l)"

mkdir -p doc/vasm
mkdir -p windows\ x32

if (( "$is64" \> 0 )); then
  echo "64 bit system"
  mkdir -p ubuntu\ x64
else
  mkdir -p ubuntu\ x32
fi;

wget http://sun.hasenbraten.de/vasm/daily/vasm.tar.gz
#
tar -xvzf vasm.tar.gz
cd vasm
mkdir obj_win32
make -f Makefile CPU=tr3200 SYNTAX=oldstyle
make -f Makefile.Win32FromLinux CPU=tr3200 SYNTAX=oldstyle
cp *.exe ../windows\ x32/

if (( "$is64" \> 0 )); then
  cp vasmtr3200_oldstyle ../ubuntu\ x64/
  cp vobjdump ../ubuntu\ x64/
else
  cp vasmtr3200_oldstyle ../ubuntu\ x32/
  cp vobjdump ../ubuntu\ x32/
fi;

make doc/vasm.html
cd doc
cp *.html ../../doc/vasm
cd ..
cd ..

echo "VASM compiled"
