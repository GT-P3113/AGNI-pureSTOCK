#!/bin/sh
export KERNELDIR=`readlink -f .`

cd $KERNELDIR;

echo "Building N7100 .....";
./build_kernel_n7100.sh && sleep 20 && rm .config;

echo "Building N7105 .....";
./build_kernel_n7105.sh && sleep 20 && rm .config;

echo "Building I605 .....";
./build_kernel_i605.sh;

