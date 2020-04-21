#!/usr/bin/env bash

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
echo "**********************************************************************"
echo "****                  OSX Security Updated.                       ****"
echo "**********************************************************************"
echo
