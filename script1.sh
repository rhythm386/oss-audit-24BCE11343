#!/bin/bash

# Script 1: System Identity Report

STUDENT_NAME="Rhythm Bachani"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

echo "==============================="
echo " Open Source Audit"
echo "==============================="
echo "Name: $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "Distro: $DISTRO"
echo "Kernel: $KERNEL"
echo "User: $USER_NAME"
echo "Home: $HOME"
echo "Uptime: $UPTIME"
echo "Date: $DATE"
echo ""
echo "License: GPL (Open Source)"
