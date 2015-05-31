#!/bin/bash

is64="$(uname -a | grep x86_64 | wc -l)"

mkdir -p windows\ x32

if (( "$is64" \> 0 )); then
  echo "64 bit system"
  mkdir -p ubuntu\ x64
else
  mkdir -p ubuntu\ x32
fi;

wget http://sun.hasenbraten.de/vlink/daily/vlink.tar.gz
tar -xvzf vlink.tar.gz
mv vlink vlink_src
cp vlink_makefilewin32 ./vlink_src/Makefile.Win32FromLinux
cd vlink_src
mkdir obj_win32
make -f Makefile
make -f Makefile.Win32FromLinux
cp *.exe ../windows\ x32/

if (( "$is64" \> 0 )); then
  cp vlink ../ubuntu\ x64/
echo "a"
else
  cp vlink ../ubuntu\ x32/
echo "b"
fi;

cd ..
echo "VLINK compiled"
