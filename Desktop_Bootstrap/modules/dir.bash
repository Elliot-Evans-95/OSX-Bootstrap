#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"

echo
echo "**********************************************************************"
echo "****              Creating Development Folders.                   ****"
echo "**********************************************************************"
echo

if [[ ! -e "~/Sites" ]] ; then
  mkdir ~/Sites 
  echo "Added Sites to Home Directory"
fi

if [[ ! -e "~/Projects" ]] ; then
  mkdir ~/Projects 
  echo "Added Projects to Home Directory"
fi

if [[ ! -e "~/Apps" ]] ; then
  mkdir ~/Sites 
  mkdir ~/Projects 
  mkdir ~/Apps
  echo "Added Apps to Home Directory"
fi

echo
echo "****************** Added Folders ******************"
echo