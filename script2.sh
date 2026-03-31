#!/bin/bash

# Script 2: FOSS Package Inspector

PACKAGE="git"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE
then
    echo "$PACKAGE is installed"
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed"
fi

echo ""

# Case statement for description
case $PACKAGE in
    git)
        echo "Git: Distributed version control system for open-source collaboration"
        ;;
    python3)
        echo "Python: Open-source programming language"
        ;;
    vlc)
        echo "VLC: Media player that supports all formats"
        ;;
    apache2)
        echo "Apache: Web server used on the internet"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
