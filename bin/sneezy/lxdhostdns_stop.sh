#!/bin/sh

LXDINTERFACE=lxdbr0

/usr/bin/systemd-resolve --interface ${LXDINTERFACE} --revert
