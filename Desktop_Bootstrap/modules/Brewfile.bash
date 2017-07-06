#!/usr/bin/env bash

# Make sure you have following env variables
# when using this Brewfile or use it with modules/brew.bash
#
# HOMEBREW_CASK_OPTS="--appdir=/Applications"
# RBENV_ROOT=/usr/local/var/rbenv
# NVM_DIR=/usr/local/var/nvm

cask_args appdir: "/Applications"

echo
echo "**********************************************************************"
echo "****              Finding and installing Brew files.              ****"
echo "**********************************************************************"
echo

# Flatstack Tools
tap "fs/fstool"
tap "homebrew/services"
tap "caskroom/cask"
tap "caskroom/versions"
tap "homebrew/bundle"
tap "homebrew/core"
tap "homebrew/dupes"
tap "homebrew/services"
tap "homebrew/versions"

# List of Brew Files
brew "autoconf"
brew "brew-rmtree"
brew "automake"
brew "readline"
brew "cmake"
brew "curl", args: ["with-openssl"]
brew "dnsmasq", restart_service: true
brew "fish"
brew "fs-tool"
brew "git"
brew "gdbm"
brew "libgpg-error"
brew "libksba"
brew "libtool"
brew "python"
brew "libyaml"
brew "mercurial"
brew "multimarkdown", args: ["HEAD"]
brew "nginx", args: ["with-http2"], restart_service: true
brew "nmap"
brew "pkg-config"
brew "ruby"
brew "tree"
brew "wget"

# Essintial React Native Utilites
brew "ios-deploy"
brew "watchman"

# Essintial Dart Utilites
brew "dart-lang/dart/dart", args: ["with-content-shell", "with-dartium"]

# Essintial PHP Utilites
brew "homebrew/php/composer"
brew "homebrew/php/php71"

# Essintial Zsh Utilites
brew "antigen"
brew "zsh-syntax-highlighting"

# Essintial Node Utilites
brew "nvm"
brew "yarn"

# Essintial Dart Utilites
brew "dart"
brew "dvm"

# Essintial PHP Utilites
brew "php71"
brew "composer"

# Essintial Go Utilites
brew "go"
brew "glide"

# Essintial DB Utilites
brew "mongodb"
brew "cassandra"
brew "mysql"

# Essintial C# Utilites
brew "mono"

# Brew Cask
cask "java"
cask "the-unarchiver"
cask "google-chrome"
cask "dash"
cask "hyper"

echo
echo "*********************** Installed Brew Files **************************"
echo



