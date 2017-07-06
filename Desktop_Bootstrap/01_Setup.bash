#!/usr/bin/env bash

set -e

OSX_BOOTSTRAP=${OSX_BOOTSTRAP:-"$HOME/osx-bootstrap"}

if [ ! -d "$OSX_BOOTSTRAP" ]
then
  git clone -b master https://github.com/fs/osx-bootstrap.git "$OSX_BOOTSTRAP"
fi

modules=(
  dir
  ssh
  github
  zsh
  dotfiles
  brew
  node
  osx_defaults
  osx_security
  dock
)

for module in "${modules[@]}"
do
  bash "$OSX_BOOTSTRAP/Desktop_Bootstrap/modules/$module.bash"
done

echo
echo "**********************************************************************"
echo "**** Mac Bootstrap script complete! Please restart your computer. ****"
echo "**********************************************************************"
echo
