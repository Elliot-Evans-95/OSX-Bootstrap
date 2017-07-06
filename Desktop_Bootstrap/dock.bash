#!/usr/bin/env bash

echo
echo "**********************************************************************"
echo "****              Adding Applications to Dock.                    ****"
echo "**********************************************************************"
echo

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Finder.app"
dockutil --no-restart --add "/Applications/Siri.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Hyper.app"
dockutil --no-restart --add "/Applications/Fantastical 2.app"
dockutil --no-restart --add "/Applications/OmniFocus.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Discord.app"
dockutil --no-restart --add "/Applications/Gogland.app"
dockutil --no-restart --add "/Applications/Webstorm.app"
dockutil --no-restart --add "/Applications/Sketch.app"
dockutil --no-restart --add "/Applications/Final Cut Pro.app"
dockutil --no-restart --add "/Applications/MacPass.app"

killall Dock