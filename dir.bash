#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

if ! test -e ~/Sites ; then
  info_echo "Setup project directory"
  mkdir ~/Sites && ~/Projects && ~/Apps
fi