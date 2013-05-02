#!/usr/bin/env bash

if [[ "$(sudo cat /etc/sudoers | grep 'includedir /etc/sudoers.d')" != "#includedir /etc/sudoers.d" ]]; then
  echo "/etc/sudoers is missing an #includedir"
  exit 1
fi

exit 0
