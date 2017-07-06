#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "./functions.bash"

echo
echo "**********************************************************************"
echo "****              Creating Development Folders.                   ****"
echo "**********************************************************************"
echo

if ! test -e ~/Sites ; then
  info_echo "Setup project directory"
  mkdir ~/Sites && ~/Projects && ~/Apps
fi