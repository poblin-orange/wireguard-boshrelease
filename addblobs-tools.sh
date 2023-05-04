#!/bin/bash
set -x


bosh add-blob ./src/debs/wireguard-tools/wireguard-tools_1.0.20200513-1~18.04.2_amd64.deb  wireguard/wireguard-tools.deb
bosh add-blob ./src/ntop.tar.gz  ntop/ntop.tar.gz
bosh add-blob ./src/debs/iftop/iftop_1.0~pre4-4_amd64.deb  iftop/iftop.deb



