#!/bin/bash
set -x
rm -rf src/*
mkdir -p src/wireguard-src
cd src/wireguard-src

#get wireguard sources
git clone https://git.zx2c4.com/wireguard-linux-compat
cd wireguard-linux-compat
git checkout v1.0.20200520 
cd ..

#get wireguard tools sources
git clone https://git.zx2c4.com/wireguard-tools
cd wireguard-tools
git checkout v1.0.20200206
cd ..

tar cvf ../wireguard-sources.tgz *

cd ../..
pwd
bosh add-blob ./src/wireguard-sources.tgz  wireguard/wireguard-sources.tgz

