#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
githubAccount="Elliot-Evans-95"
home="~/"

echo
echo "**********************************************************************"
echo "****              Cloning dotfiles from repo                      ****"
echo "**********************************************************************"
echo

source "./functions.bash"

echo "Installing bash dotfiles"

cd ${home} && git clone https://github.com/${githubAccount}/dotfiles.git
