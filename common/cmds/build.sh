#! /bin/sh

# dd if=/dev/zero of=myfs bs=1M count=2
gcc ./mkfs.c -o mkfs 
gcc ./fsdb.c -o fsdb 
gcc ./fillfs.c -o fillfs 