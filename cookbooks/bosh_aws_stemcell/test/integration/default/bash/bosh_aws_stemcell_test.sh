#!/usr/bin/env bash

if [[ ! -f /etc/default/sysstat ]]; then
  echo "missing file /etc/default/sysstat"
  exit 1
fi

if [[ "$(sudo cat /etc/sudoers | grep 'includedir /etc/sudoers.d')" != "#includedir /etc/sudoers.d" ]]; then
  echo "/etc/sudoers is missing an #includedir"
  exit 1
fi

