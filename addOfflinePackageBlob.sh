#!/bin/bash
set -x
rm -rf src/*

mkdir -p src/wireguard-packages
cd src/wireguard-packages

#get wireguard sources
apt-get download wireguard

#get wireguard tools sources
apt-get download wireguard-tools
cd ..
pwd
bosh add-blob ./src/wireguard_1.0.20200319-0ppa1~16.04_all.deb wireguard/wireguard.de
bosh add-blob ./src/wireguard-tools_1.0.20200319-0ppa1~16.04_amd64.deb wireguard/wireguard-tools.deb
