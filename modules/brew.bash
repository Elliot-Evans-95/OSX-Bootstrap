#!/usr/bin/env bash

RootDir=$PWD

echo
echo "**********************************************************************"
echo "****                  Installing Homebrew.                        ****"
echo "**********************************************************************"
echo

if test ! "$(which brew)"; then
#  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew exits, updating Homebrew"
  brew update
fi

echo "Checking on Homebrew"
brew doctor
brew prune

echo "Install Brew formalue"
cd "$RootDir/modules" || exit
brew tap Homebrew/bundle
brew bundle

echo "Check Bundle List for updates"
brew bundle check

echo "Remove outdated versions from the cellar"
brew cleanup

cd "$RootDir" || exit

echo
echo "**********************************************************************"
echo "****                Homebrew Installed / Updated                  ****"
echo "**********************************************************************"
echo
