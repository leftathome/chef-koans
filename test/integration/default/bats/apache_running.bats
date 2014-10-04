#!/usr/bin/env bats

@test "apache is running" {
  run sudo /etc/init.d/apache2 status
  [ $status -eq 0 ]
  [ $(echo "$output" | grep -c "running") -eq 1 ]
  }
