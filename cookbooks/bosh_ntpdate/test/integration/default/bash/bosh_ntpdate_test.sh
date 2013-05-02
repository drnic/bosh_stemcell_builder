#!/usr/bin/env bash

if [[ ! -d /var/vcap/bosh/log ]]; then
  echo "missing /var/vcap/bosh/log"
  exit 1
fi

if [[ ! -f /var/vcap/bosh/bin/ntpdate ]]; then
  echo "missing /var/vcap/bosh/bin/ntpdate file"
  exit 1
fi

if [[ "$(crontab -l | grep bin/ntpdate)" != "*/15 * * * * /var/vcap/bosh/bin/ntpdate" ]]; then
  echo "missing crontab entry"
  exit 1
fi

exit 0
