#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"

echo
echo "**********************************************************************"
echo "****                  Installing Homebrew.                        ****"
echo "**********************************************************************"
echo

if test ! "$(which brew)"; then
  echo "Install Homebrew, a good OS X package manager"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Update Homebrew"
  brew update
fi

echo "Checking on Homebrew"
brew doctor
brew prune

echo "Install Brew formalue"
brew tap Homebrew/bundle
brew bundle --file="$osx_bootstrap/Brewfile"

echo "Check Bundle List for updates"
brew bundle check

echo "Remove outdated versions from the cellar"
brew cleanup

echo
echo "***************** Homebrew Installed / Updated **************************"
echo