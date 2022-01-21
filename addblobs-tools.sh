#!/bin/bash
set -x

bosh add-blob ./src/ntop.tar.gz  ntop/ntop.tar.gz
bosh add-blob ./src/debs/iftop_1.0~pre4-4_amd64.deb  iftop/iftop.deb



