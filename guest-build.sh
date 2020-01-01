#!/usr/bin/env bash
wget https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
virt-customize -a bionic-server-cloudimg-amd64.img --root-password password:rootpass
qemu-img convert -f raw -O vmdk bionic-server-cloudimg-amd64.img bionic-server-cloudimg-amd64.vmdk
rm bionic-server-cloudimg-amd64.img