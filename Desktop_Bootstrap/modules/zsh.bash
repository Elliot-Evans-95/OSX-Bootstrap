#!/bin/bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "./functions.bash"

echo
echo "**********************************************************************"
echo "****                      Installing Zsh.                         ****"
echo "**********************************************************************"
echo

# install oh-my-zsh
if [[ ! -f ~/.zshrc ]]; then
    echo ''
    echo '##### Installing oh-my-zsh...'
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi