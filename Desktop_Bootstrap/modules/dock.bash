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
dockutil --add /Applications/Transmit.app --allhomes
#dockutil --add "~/Library/Application\ Support/JetBrains/Toolbox/apps/WebStorm/ch-0/171.4424.63/WebStorm.app" --allhomes
#dockutil --add "~/Library/Application\ Support/JetBrains/Toolbox/apps/PhpStorm/ch-0/163.13906.21/PhpStorm.app" --allhomes
#dockutil --add "~/Library/Application\ Support/JetBrains/Toolbox/apps/Gogland/ch-0/171.4424.55/Gogland 1.0 EAP.app" --allhomes
dockutil --add "/Applications/Visual Studio Code.app" --allhomes
dockutil --add /Applications/Sketch.app --allhomes
dockutil --add /Applications/Discord.app --allhomes
dockutil --add /Applications/Slack.app --allhomes
dockutil --add "/Applications/Fantastical 2.app" --allhomes
dockutil --add /Applications/OmniFocus.app --allhomes
dockutil --add "~/Downloads" --section others --display stack --allhomes

# Add spacing
dockutil --add '' --type spacer --section apps --after Chrome
dockutil --add '' --type spacer --section apps --after Hyper
dockutil --add '' --type spacer --section apps --after Transmit
dockutil --add '' --type spacer --section apps --after Code
dockutil --add '' --type spacer --section apps --after Sketch
dockutil --add '' --type spacer --section apps --after Slack
dockutil --add '' --type spacer --section apps --after OmniFocus

echo
echo "********************* Added Apps to Dock *****************************"
echo " Finder | Chrome | - | Hyper | - | Transmit | - | VS Code | - |"
echo " Sketch | - | Discord | Slack | - | Fantastical_2 | OmniFocus || - | Downloads | Bin"
echo "********************* Added Apps to Dock *****************************"
echo