#!/usr/bin/env bash

echo
echo "**********************************************************************"
echo "****              Adding Applications to Dock.                    ****"
echo "**********************************************************************"
echo

# Thank you kcrawford for the great work!

#curl -LJO "https://github.com/kcrawford/dockutil/releases/download/2.0.5/dockutil-2.0.5.pkg"
#sudo installer -pkg "dockutil-2.0.5.pkg" -target /
# NOTE: using Github as it has the latest code
git clone https://github.com/kcrawford/dockutil.git "$HOME/dockutil"
bash "$HOME/dockutil/build.sh"

# Removes All Dock Applications
dockutil --remove all --allhomes

# Add Specific apps to Dock
dockutil --add "/Applications/Google Chrome.app" --allhomes
dockutil --add /Applications/Hyper.app --allhomes
dockutil --add "$HOME/Downloads" --section others --display stack --allhomes

# Add spacing
dockutil --add '' --type spacer --section apps --after Chrome
dockutil --add '' --type spacer --section apps --after Hyper

# Removing folder
rmdir "$HOME/dockutil"

echo
echo "********************* Added Apps to Dock *****************************"
echo "          Finder | Chrome | - | Hyper | - | Downloads | Bin           "
echo "********************* Added Apps to Dock *****************************"
echo
