#!/bin/bash

export PATH=/C/Rtools/mingw_64/bin:$PATH:/C/Rtools/bin

# Must be version 4.9.3 shipped with Rtools
gcc --version
gfortran --version
# export OSNAME=WINNT
make all
