#!/usr/bin/env bats

@test "creates copy of root file system into tarball" {
  [ -f /var/vcap/stemcell_base.tar.gz ]
}

@test "root file system tarball is pretty big" {
  run ls -s /var/vcap/stemcell_base.tar.gz | awk '{print $1}'
  [[ ${lines[0]} -gt 0 ]]
}
