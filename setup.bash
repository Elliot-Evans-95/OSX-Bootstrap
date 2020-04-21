#!/usr/bin/env bash

modules=(
  dir
  brew
  github
  dotfiles
  osx_defaults
  osx_security
  dock
)

for module in "${modules[@]}"
do
  bash "$HOME/OSX-Bootstrap/modules/$module.bash"
done
