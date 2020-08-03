#!/bin/bash
set -x
rm -rf src/*

mkdir -p src/wireguard-packages
cd src/wireguard-packages

#get wireguard sources
apt-get download wireguard

#get wireguard tools sources
apt-get download wireguard-tools
apt-get download wireguard-dkms

cd ..
pwd
bosh add-blob ./src/wireguard-packages/wireguard_1.0.20200513-1~16.04.1_all.deb wireguard/wireguard.deb 
bosh add-blob ./src/wireguard-packages/wireguard-tools_1.0.20200513-1~16.04.1_amd64.deb  wireguard-tools.deb
bosh add-blob ./src/wireguard-packages/wireguard-dkms_1.0.20200611-1ubuntu1~16.04.1_all.deb wireguard/wireguard-dkms.deb

