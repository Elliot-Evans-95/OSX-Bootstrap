#!/usr/bin/env bash

echo
echo "**********************************************************************"
echo "****              Adding Applications to Dock.                    ****"
echo "**********************************************************************"
echo

defaults write com.apple.dock persistant-apps -array-add '<dict><key>title-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</interger></dict></dict></dict></dict>'
defaults write com.apple.dock persistant-apps -array-add '<dict><key>title-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Hyper.app</string><key>_CFURLStringType</key><integer>0</interger></dict></dict></dict></dict>'
defaults write com.apple.dock persistant-apps -array-add '<dict><key>title-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Sketch.app</string><key>_CFURLStringType</key><integer>0</interger></dict></dict></dict></dict>'

killall Dock

echo
echo "********************* Added Apps to Dock *****************************"
echo