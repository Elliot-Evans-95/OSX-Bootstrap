#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"

echo
echo "**********************************************************************"
echo "****                  Installing Node from NVM                    ****"
echo "**********************************************************************"
echo

if test -z "$(nvm ls|grep "node")"; then
  echo "Install latest Node.js version"
  nvm install node
fi

echo "Set latest Node.js version as global default Node"
nvm use node
nvm alias default node

export npm_config_global=true
export npm_config_loglevel=silent
