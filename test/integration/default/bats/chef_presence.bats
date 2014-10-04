#!/usr/bin/env bats

@test "chef-client is present" { 
  run sudo chef-client -v
  [ $status -eq 0 ]
  }
