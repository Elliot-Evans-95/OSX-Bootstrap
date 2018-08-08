#!/usr/bin/env bash

echo
echo "**********************************************************************"
echo "****              Adding Applications to Dock.                    ****"
echo "**********************************************************************"
echo

# NEED TO INSTALL DOCKUTIL
curl -LJO "https://github.com/kcrawford/dockutil/releases/download/2.0.5/dockutil-2.0.5.pkg"
sudo installer -pkg "dockutil-2.0.5.pkg" -target /

# Removes All Dock Applications
dockutil --remove all --allhomes

# Add Specific apps to Dock
dockutil --add "/Applications/Google Chrome.app" --allhomes
dockutil --add /Applications/Hyper.app --allhomes
dockutil --add /Applications/Sketch.app --allhomes
dockutil --add "~/Downloads" --section others --display stack --allhomes

# Add spacing
dockutil --add '' --type spacer --section apps --after Chrome
dockutil --add '' --type spacer --section apps --after Hyper
dockutil --add '' --type spacer --section apps --after Sketch

echo
echo "********************* Added Apps to Dock *****************************"
echo " Finder | Chrome | - | Hyper | - | Sketch | - | Downloads | Bin"
echo "********************* Added Apps to Dock *****************************"
echo
