#!/bin/bash

echo $PATH

pwd

cd /

ls -lash

cd /bin
ls -lash

cd /usr
ls -lash

cd /usr/bin
ls -lash

cd /mingw64
ls -lash

cd /mingw32
ls -lash

cd /c/projects/openblasr/OpenBLAS
pwd

alias gcc=x86_64-pc-msys-gcc
alias gfortran=x86_64-pc-msys-gfortran
alias x86_64-pc-msys-ar=x86_64-pc-msys-gcc-ar
alias ar=x86_64-pc-msys-gcc-ar

export PATH=/usr/bin:/bin

# export PATH=/C/Rtools/mingw_64/bin:/C/Rtools/bin:/usr/bin:/bin

echo $PATH

# Must be version 4.9.3 shipped with Rtools
gcc --version
gfortran --version

make all
