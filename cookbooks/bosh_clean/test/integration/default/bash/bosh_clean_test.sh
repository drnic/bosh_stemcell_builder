#!/usr/bin/env bash

if [[ -d /var/vcap/bosh/src ]]; then
  echo "OMG why is /var/vcap/bosh/src still here?"
  exit 1
fi

exit 0
