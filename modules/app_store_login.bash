#!/usr/bin/env bash

app_store_email="elliot@mercarto.com"

echo
echo "**********************************************************************"
echo "****                    App Store Login...                        ****"
echo "**********************************************************************"
echo

mas signin --dialog $app_store_email

echo
echo "**********************************************************************"
echo "****                   Logged into the app store                  ****"
echo "**********************************************************************"
echo
