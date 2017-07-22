#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
githubAccount="Elliot-Evans-95"

echo
echo "**********************************************************************"
echo "****              Cloning dotfiles from repo                      ****"
echo "**********************************************************************"
echo

cd $home

git init
git remote add origin https://github.com/${githubAccount}/dotfiles.git
git pull --depth=1 origin master

source ~/.bashrc

echo
echo "********************* dotfiles now added *****************************"
echo
