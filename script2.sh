#!/bin/bash

# Script 2: FOSS PACKAGE Inspector

PACKAGE="git"

# Check if package is installed
if dpkg -l | grep -q "^ii $PACKAGE"; then
	echo "$PACKAGE is installed"
         dpkg -1 | grep "$PACKAGE"
else
	echo "$PACKAGE is NOT installed"
fi

echo ""

case $PACKAGE in
	git)
	   echo "Git: A distributed verison control system for tracking code change"
           ;;
        vlc)
	  echo "VLC: A media player that can play almost any format"
	  ;;
	*)
	  echo "Unknown Package"
	  ;;

esac
