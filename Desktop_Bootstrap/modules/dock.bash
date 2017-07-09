#!/usr/bin/env bash

echo
echo "**********************************************************************"
echo "****              Adding Applications to Dock.                    ****"
echo "**********************************************************************"
echo

# NEED TO INSTALL DOCKUTIL
# https://github.com/kcrawford/dockutil/releases/tag/2.0.5

# Removes All Dock Applications
dockutil --remove all --allhomes

# Add Specific apps to Dock
dockutil --add /Applications/Google_Chrome.app --allhomes
dockutil --add /Applications/Hyper.app --allhomes
dockutil --add /Applications/Transmit.app --allhomes
dockutil --add /Applications/Webstorm.app --allhomes
dockutil --add /Applications/PHPStorm.app --allhomes
dockutil --add /Applications/Goland.app --allhomes
dockutil --add /Applications/Sketch.app --allhomes
dockutil --add /Applications/Discord.app --allhomes
dockutil --add /Applications/Slack.app --allhomes
dockutil --add /Applications/Fantastical_2.app --allhomes
dockutil --add /Applications/OmniFocus.app --allhomes
dockutil --add "~/Downloads" --section others --display stack --allhomes

# Add spacing
dockutil --add '' --type spacer --section apps --after Google_Chrome.app

# Orginise Dock to preverance

echo
echo "********************* Added Apps to Dock *****************************"
echo " Finder | Chrome | - | Hyper | - | Transmit | - | Webstorm | PHPstorm | GOLand | - |"
echo " Sketch | - | Discord | Slack | - | Fantastical_2 | OmniFocus || - | Downloads | - | Bin"
echo "********************* Added Apps to Dock *****************************"
echo