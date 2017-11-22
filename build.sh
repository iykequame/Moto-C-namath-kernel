#!/bin/bash

#Mysteryagr
#Compile kernel with a build script to make things simple

mkdir -p out

#Clone toolchain first: https://github.com/Mysteryagr/prebuilts-gcc-linux-x86-arm-cit-arm-eabi-4.8
export CROSS_COMPILE=~/toolchain/prebuilts-gcc-linux-x86-arm-cit-arm-eabi-4.8/bin/arm-eabi-

export ARCH=arm

#Defconfig for Moto C
make O=output ARCH=arm wt6737m_35_n_defconfig

make -j4 -C ARCH=arm O=output
