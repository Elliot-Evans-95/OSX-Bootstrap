#!/usr/bin/env bash

echo
echo "**********************************************************************"
echo "****              Creating Development Folders.                   ****"
echo "**********************************************************************"
echo

if [[ ! -e "$HOME/Projects" ]] ; then
  mkdir "$HOME/Projects"
  echo "Added Projects Folder to $HOME"
fi

if [[ ! -e "$HOME/Sites" ]] ; then
  mkdir "$HOME/Sites"
  echo "Added Sites Folder to $HOME"
fi

echo
echo "**********************************************************************"
echo "****                 Added Development Folders.                   ****"
echo "**********************************************************************"
echo
