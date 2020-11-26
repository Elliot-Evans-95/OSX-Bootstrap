#!/usr/bin/env bash

echo 'Please enter your name for your Mac: '
read -r mac_n
echo 'Please enter your github username: '
read -r gh_u
echo 'Please enter your github email address: '
read -r gh_e
echo 'Please enter your github token: '
read -r gh_t

set -a
github_user=gh_u
github_email=gh_e
github_token=gh_t
mac_name=mac_n
set +a

modules=(
  dir
  brew
  github
  dotfiles
  osx_defaults
  osx_security
  dock
  extra
)

for module in "${modules[@]}"
do
  bash "$HOME/OSX-Bootstrap/modules/$module.bash"
done
