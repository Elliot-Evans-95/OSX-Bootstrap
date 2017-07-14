#!/usr/bin/env bash

OSX_BOOTSTRAP=${OSX_BOOTSTRAP:-"$HOME/OSX-Bootstrap"}

modules=(
  dir
  ssh
  brew
  ruby
  node
  osx_defaults
  osx_security
  github
  zsh
  dotfiles
  dock
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
