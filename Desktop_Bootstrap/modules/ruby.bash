#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
ruby_version="2.4.1"

echo
echo "**********************************************************************"
echo "****              Updating Ruby to the latest version.            ****"
echo "**********************************************************************"
echo

echo "Enable rbenv alias"
eval "$(rbenv init -)"

echo "Set default gems list"
echo "bundler" >> "$(brew --prefix rbenv)/default-gems"
echo "tmuxinator" >> "$(brew --prefix rbenv)/default-gems"

if test -z "$(rbenv versions --bare|grep $ruby_version)"; then
  echo "Install Ruby $ruby_version"
  rbenv install $ruby_version
fi

echo "Set Ruby $ruby_version as global default Ruby"
rbenv global $ruby_version
rbenv shell $ruby_version

echo "Update to latest Rubygems version"
gem update --system --no-document

echo "Installing Bundler to install project-specific Ruby gems"
gem install bundler --no-document

echo
echo "************************ Updated Ruby Version ************************"
echo