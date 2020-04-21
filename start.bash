#!/usr/bin/env bash

set -e

# TODO: type out your github and token for dot files?
#github_user="Elliot-Evans-95"
#github_email="ell15evans.nuls@googlemail.com"
#github_token="token"
#mac_name="name_of_mac"

echo
echo "**********************************************************************"
echo "****                   Bootstrapping Machine...                   ****"
echo "**********************************************************************"
echo

if [[ ! -e "$HOME/OSX-Bootstrap" ]] ; then
  echo "This Script is not located in the $HOME dir"
  echo "Cloning..."
  git clone --depth=1 -b master https://github.com/elliot-evans-95/osx-bootstrap.git "$HOME/OSX-Bootstrap"
  bash "$HOME/OSX-Bootstrap/start.bash"
else
  bash "$OSX_BOOTSTRAP/setup.bash"
fi

echo
echo "**********************************************************************"
echo "**** Mac Bootstrap script complete! Please restart your computer. ****"
echo "**********************************************************************"
echo

echo "The file 'github_ssh_key.txt' can been generated at $HOME"
echo "Copy its contents to complete the github setup"
echo "Info: https://help.github.com/articles/generating-ssh-keys"
