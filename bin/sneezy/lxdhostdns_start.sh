#!/bin/sh

LXDINTERFACE=lxdbr0
LXDDOMAIN=lxd
LXDDNSIP=`ip addr show lxdbr0 | grep -Po 'inet \K[\d.]+'`

/usr/bin/systemd-resolve --interface ${LXDINTERFACE} \
                         --set-dns ${LXDDNSIP} \
                         --set-domain ${LXDDOMAIN}

