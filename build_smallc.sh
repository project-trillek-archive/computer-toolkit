#!/bin/bash

is64="$(uname -a | grep x86_64 | wc -l)"

if (( "$is64" \> 0 )); then
  echo "64 bit system"
  mkdir -p ubuntu\ x64
else
  mkdir -p ubuntu\ x32
fi;

git submodule init
git submodule update

cd SmallerC
make CPPFLAGS=-DTR3200 smlrc

if (( "$is64" \> 0 )); then
  cp smlrc ../ubuntu\ x64/
else
  cp smlrc ../ubuntu\ x32/
fi;

make clean
make CC=i686-w64-mingw32-gcc smlrc
cp smlrc ../windows\ x32/

echo "SmallerC Core compiled"

cd ..

