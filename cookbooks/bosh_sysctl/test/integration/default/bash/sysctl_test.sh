#!/usr/bin/env bash

if [[ ! -f /chroot/etc/sysctl.d/60-bosh-sysctl.conf ]]; then
  echo "/chroot/etc/sysctl.d/60-bosh-sysctl.conf not found"
  exit 1
fi

exit 0