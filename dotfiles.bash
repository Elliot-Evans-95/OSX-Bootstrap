#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
githubAccount="Elliot-Evans-95"
home="~/"

source "$osx_bootstrap/modules/functions.bash"

echo "Installing bash dotfiles"

cd ${home} && git clone https://github.com/${githubAccount}/dotfiles.git
