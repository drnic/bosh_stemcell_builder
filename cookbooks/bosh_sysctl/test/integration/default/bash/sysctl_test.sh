#!/usr/bin/env bash

if [[ ! -f /etc/sysctl.d/60-bosh-sysctl.conf ]]; then
  echo "/etc/sysctl.d/60-bosh-sysctl.conf not found"
  exit 1
fi

exit 0