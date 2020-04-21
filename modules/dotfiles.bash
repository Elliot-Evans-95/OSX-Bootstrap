#!/usr/bin/env bash

github_user="Elliot-Evans-95"

echo
echo "**********************************************************************"
echo "****              Cloning dotfiles from repo                      ****"
echo "**********************************************************************"
echo

if [[ -d ~/.config ]] ; then
    rmdir ~/.config
    echo "Removed old fish config if it exists"
fi

git clone https://github.com/${github_user}/dotfiles.git "$HOME"

if [[ -f ~/.config/fish/config.fish ]] ; then
    # shellcheck source=$HOME/.config/fish/config.fish
    source "$HOME/.config/fish/config.fish"
    echo "Sourcing config file for fish setup"
fi

echo
echo "**********************************************************************"
echo "****            Cloned & Sourced dotfiles from repo               ****"
echo "**********************************************************************"
echo
