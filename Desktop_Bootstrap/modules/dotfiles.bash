#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
githubAccount="Elliot-Evans-95"

echo
echo "**********************************************************************"
echo "****              Cloning dotfiles from repo                      ****"
echo "**********************************************************************"
echo

cd $home

git pull https://github.com/${githubAccount}/dotfiles.git

ln -sv “~/.dotfiles/git/.bashrc ~
ln -sv “~/.dotfiles/git/.zshrc ~
ln -sv “~/.dotfiles/git/.hyper.js ~
ln -sv “~/.dotfiles/git/.gitconfig” ~

source ~/.bash_profile

echo
echo "********************* dotfiles now added *****************************"
echo
