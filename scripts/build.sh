#!/bin/bash

echo $PATH

pwd

cd /

ls -lash

cd ~

pwd

export PATH=/mingw64/bin:/mingw32/bin:/usr/bin:/bin

# export PATH=/C/Rtools/mingw_64/bin:/C/Rtools/bin:/usr/bin:/bin

echo $PATH

# Must be version 4.9.3 shipped with Rtools
gcc --version
gfortran --version

make all
