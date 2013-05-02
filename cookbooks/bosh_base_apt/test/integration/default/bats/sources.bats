#!/usr/bin/env bats

@test "sources setup" {
  run cat /etc/apt/sources.list
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" ]
  [ "${lines[1]}" = "deb http://archive.ubuntu.com/ubuntu precise-updates main universe multiverse" ]
  [ "${lines[2]}" = "deb http://security.ubuntu.com/ubuntu precise-security main universe multiverse" ]
}
