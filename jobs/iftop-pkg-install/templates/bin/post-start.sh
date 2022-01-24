#!/bin/bash

set -euxo pipefail

DEBS_PACKAGES=/var/vcap/packages/iftop

install_package() {
  local package=$1

  count_failure=0
  until dpkg -i "$package"; do
    if [[ $count_failure -ge 100 ]]; then
      echo "Failed installing package $package after 100 attempts."
      exit 1
    fi
    echo "Retrying '$package'"
    count_failure=$(($count_failure+1))
    sleep 2
  done
}

install_package "${DEBS_PACKAGES:?}/iftop.deb"
