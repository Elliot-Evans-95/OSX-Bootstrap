#!/usr/bin/env bash

echo
echo "**********************************************************************"
echo "****              Creating Development Folders.                   ****"
echo "**********************************************************************"
echo

if [[ ! -e "$HOME/projects" ]] ; then
  mkdir "$HOME/projects"
  echo "Added 'projects' Folder to $HOME"
fi

if [[ ! -e "$HOME/Sites" ]] ; then
  mkdir "$HOME/Sites"
  echo "Added 'Sites' Folder to $HOME"
fi

if [[ ! -e "$HOME/go" ]] ; then
  mkdir "$HOME/go"
  echo "Added 'go' Folder to $HOME"
fi

echo
echo "**********************************************************************"
echo "****                 Added Development Folders.                   ****"
echo "**********************************************************************"
echo
