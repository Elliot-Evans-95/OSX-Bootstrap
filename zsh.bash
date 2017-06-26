#!/bin/bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
source "$osx_bootstrap/modules/functions.bash"

# install oh-my-zsh
if [[ ! -f ~/.zshrc ]]; then
    echo ''
    echo '##### Installing oh-my-zsh...'
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

    # setup zsh
    rm -rf ~/.zshrc

    # create zshrc
    cp -rf $source_dir/templates/.zshrc ~/
fi