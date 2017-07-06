#!/usr/bin/env bash

# Make sure you have following env variables
# when using this Brewfile or use it with modules/brew.bash
#
#  HOMEBREW_CASK_OPTS="--appdir=/Applications"
#  RBENV_ROOT=/usr/local/var/rbenv
#  NVM_DIR=/usr/local/var/nvm

echo
echo "**********************************************************************"
echo "****              Finding and installing Brew files.              ****"
echo "**********************************************************************"
echo

# Flatstack Tools
tap "fs/fstool"
brew "fs-tool"

# Essential terminal utilities
tap "homebrew/services"
brew "git"
brew "watchman"
brew "curl", args: ["with-openssl"]
brew "nmap"
brew "tree"
brew "autoconf"
brew "brew-rmtree"
brew "automake"
brew "readline"
brew "pkg-config"

# Essintial Zsh
brew "antigen"
brew "zsh-syntax-highlighting"

# Essential Mac applications
tap "caskroom/cask"
tap "caskroom/versions"
tap "homebrew/bundle"
tap "homebrew/core"
tap "homebrew/dupes"
tap "homebrew/services"
tap "homebrew/versions"

cask "java"
cask "the-unarchiver"
cask "google-chrome"
cask "dash"
cask "hyper"

# Essintial Node Utilites
brew "nvm"
brew "yarn"

# Essintial Dart Utilites
brew "dart"
brew "dvm"

# Essintial PHP Utilites
brew "php71"
brew "composer"

# Essintial Mobile Utilites
brew "ios-deploy"

# Essintial Go Utilites
brew "go"
brew "glide"

# Essintial C# Utilites
brew "mono"

echo
echo "*********************** Installed Brew Files **************************"
echo