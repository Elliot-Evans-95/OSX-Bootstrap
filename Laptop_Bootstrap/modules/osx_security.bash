#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"

echo
echo "**********************************************************************"
echo "****              Configurating OSX Security.                     ****"
echo "**********************************************************************"
echo

echo "Expose hidden files and Library folder in Finder"
defaults write com.apple.finder AppleShowAllFiles -bool true
chflags nohidden ~/Library

echo "Empty Trash securely by default"
defaults write com.apple.finder EmptyTrashSecurely -bool true

echo
echo "********************* OSX Security Updated *****************************"
echo