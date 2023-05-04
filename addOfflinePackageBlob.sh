#!/bin/bash
set -x
rm -rf src/*

mkdir -p src/wireguard-packages
cd src/wireguard-packages

#get wireguard sources
#apt-get download wireguard

#get wireguard tools sources
#apt-get download wireguard-tools
#apt-get download wireguard-dkms

cd ..
pwd
bosh add-blob ./src/wireguard-packages/wireguard-tools_1.0.20200513-1~18.04.2_amd64.deb  wireguard/wireguard-tools.deb



