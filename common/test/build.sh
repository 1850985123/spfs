#! /bin/sh
set -x
gcc ./fanotify-example.c -o fanotify-example 

if [ $1 ]
then
    sudo mkdir /tmp/parent
    sudo mount --bind $1 /tmp/parent

    sudo ./fanotify-example /tmp/parent
    sudo umount -l /tmp/parent
else
    # sudo ./fanotify-example /home  | grep /home/jack/test
fi
