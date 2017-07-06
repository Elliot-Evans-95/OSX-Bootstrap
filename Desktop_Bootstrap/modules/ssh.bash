#!/usr/bin/env bash

osx_bootstrap="$(cd "$(dirname "$0")/.." && pwd -P)"
githubAccount="Elliot-Evans-95"
sshKeyFileName="pastetest.txt"

echo
echo "**********************************************************************"
echo "****                   Creating SSH Key.                          ****"
echo "**********************************************************************"
echo

echo "Checking for SSH key, generating one if it doesn't exist"
[[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

echo "Copying public key to clipboard. Paste it into your Github account"
[[ -f ~/.ssh/id_rsa.pub ]] && pbcopy < ~/.ssh/id_rsa.pub
pbpaste > $sshKeyFileName
open $sshKeyFileName

echo
echo "*************** SSHKey saved to ${sshKeyFileName} *********************"
echo