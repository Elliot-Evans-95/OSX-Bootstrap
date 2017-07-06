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

echo "Install Brew formalue"
brew tap "Homebrew/bundle" 2> /dev/null
brew bundle --file="$osx_bootstrap/Brewfile"

# https://github.com/eventmachine/eventmachine/issues/602#issuecomment-152184551
echo "Link keg-only openssl to /usr/local to let software outside of Homebrew to find it"
brew unlink openssl && brew link openssl --force

echo "Link Curl with openssl"
brew link --force curl

echo "Remove outdated versions from the cellar"
brew cleanup

echo
echo "***************** Homebrew Installed / Updated **************************"
echo