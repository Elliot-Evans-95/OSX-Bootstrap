#!/usr/bin/env bash

OSX_BOOTSTRAP=${OSX_BOOTSTRAP:-"$HOME/OSX-Bootstrap"}

modules=(
  dir
  ssh
  github
  zsh
  dotfiles
  brew
  osx_defaults
  osx_security
  dock
  node
)

for module in "${modules[@]}"
do
  bash "$OSX_BOOTSTRAP/Laptop_Bootstrap/modules/$module.bash"
done

echo
echo "**********************************************************************"
echo "**** Mac Bootstrap script complete! Please restart your computer. ****"
echo "**********************************************************************"
echo
