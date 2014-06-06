#!/bin/bash

# install the backported kernel
apt-get update
apt-get install -y linux-image-generic-lts-trusty linux-headers-generic-lts-trusty

# reboot
echo "Rebooting the machine..."
reboot
sleep 60
