#!/bin/bash

#Mysteryagr
#Compile kernel with a build script to make things simple

mkdir -p out

make  O=output ARCH=arm CROSS_COMPILE="/$toolchain/prebuilts-gcc-linux-x86-arm-cit-arm-eabi-4.8/bin/arm-eabi-"    wt6737m_35_n_defconfig
make -C  ./../Moto-C-namath-kernel/  ARCH=arm CROSS_COMPILE="$toolchain/prebuilts-gcc-linux-x86-arm-cit-arm-eabi-4.8/bin/arm-eabi-"   O=output 
