#!/usr/bin/env bash

if [[ ! -f /etc/default/sysstat ]]; then
  echo "missing file /etc/default/sysstat"
  exit 1
fi

exit 0
