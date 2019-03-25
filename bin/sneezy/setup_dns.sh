#!/bin/bash

# Setup DNS resolving of containers on the host


sudo mkdir -p /etc/systemd/resolved.conf.d

LXDDNSIP=`ip addr show lxdbr0 | grep -Po 'inet \K[\d.]+'`

echo "
[Resolve]
DNS=${LXDDNSIP}
Domains=lxd
" | sudo tee  /etc/systemd/resolved.conf.d/lxdbr0.conf

sudo systemctl restart systemd-resolved.service
