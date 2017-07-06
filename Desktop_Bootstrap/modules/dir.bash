#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"

echo
echo "**********************************************************************"
echo "****              Creating Development Folders.                   ****"
echo "**********************************************************************"
echo

if ! test ~/Sites exists ; then
  mkdir ~/Sites 
  echo "Added Sites to Home Directory"
fi

if ! test ~/Projects exists ; then
  mkdir ~/Projects 
  echo "Added Projects to Home Directory"
fi

if ! test ~/Apps exists ; then
  mkdir ~/Sites 
  mkdir ~/Projects 
  mkdir ~/Apps
  echo "Added Apps to Home Directory"
fi

echo "****************** Added Folders ******************"