#!/bin/bash

github_user="Elliot-Evans-95"
github_email="elliot@mercarto.com"
github_token="TOKEN_HERE"
github_ssh_key="github_ssh_key.txt"

echo
echo "**********************************************************************"
echo "****                Starting Github Process.                      ****"
echo "**********************************************************************"
echo

if [[ -f ~/.ssh/id_rsa ]]; then
  rm ~/.ssh/id_rsa
fi

echo 'Setting up Github Configuration: '
git config --global user.name "$github_user"
git config --global user.email "$github_email"
git config --global github.user "$github_user"
git config --global github.token "$github_token"
git config --global color.ui true
git config --global push.default current

echo 'Generating SSH Key... '
ssh-keygen -t rsa -b 4096 -C "$github_email"
pbcopy < ~/.ssh/id_rsa.pub
pbpaste > ~/$github_ssh_key
open $github_ssh_key

echo
echo "**********************************************************************"
echo "****                  Connecting to Github.                       ****"
echo "**********************************************************************"
echo
