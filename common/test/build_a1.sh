#! /bin/sh



ROOT_PATH=`pwd`
export PATH=$PATH:/opt/mips-gcc720-uclibc229/bin:/opt/mips-gcc720-uclibc229/sbin

export CC=mips-linux-uclibc-gcc CXX=mips-linux-uclibc-g++ AR=mips-linux-uclibc-ar

STRIP=mips-linux-uclibc-strip
TOOLCHAIN_LIB_PATH=/opt/mips-gcc720-uclibc229/mips-linux-uclibc/libc/usr/lib

export CROSS_COMPILE=mips-linux-uclibc-

set -x
$CC ./fanotify-example.c -o fanotify-example -v