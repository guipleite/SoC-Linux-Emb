#!/bin/bash

case "$1" in
start)
    ifconfig eth0 down
    ifconfig eth0 up
    printf "Setting ip: "
    /sbin/ifconfig eth0 169.254.0.13 netmask 255.255.0.0 up
    [ $? = 0 ] && echo "OK" || echo "FAIL"
    /etc/init.d/S50sshd start


    ;;
*)  
    exit 1
    ;;
esac

