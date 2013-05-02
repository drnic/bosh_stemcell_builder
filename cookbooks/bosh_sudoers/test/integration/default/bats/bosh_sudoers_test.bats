#!/usr/bin/env bats

@test "/etc/sudoers includes dir" {
  [[ "$(sudo cat /chroot/etc/sudoers | grep 'includedir /etc/sudoers.d')" != "#includedir /etc/sudoers.d" ]]
}
