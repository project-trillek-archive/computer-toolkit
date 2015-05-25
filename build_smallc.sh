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

cd SmallerC/v0100/
gcc -Wall -Wextra -O2 -D TR3200 smlrc.c -o smlrc

if (( "$is64" \> 0 )); then
  cp smlrc ../../ubuntu\ x64/
else
  cp smlrc ../../ubuntu\ x32/
fi;

i586-mingw32msvc-gcc -Wall -Wextra -O2 smlrc.c -o smlrc.exe
cp smlrc.exe ../../windows\ x32/

echo "SmallerC Core compiled"

cd ..
cd ..

