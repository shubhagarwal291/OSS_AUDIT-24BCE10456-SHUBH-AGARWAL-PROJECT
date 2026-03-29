#!/bin/bash

STUDENT_NAME="Shubh Agarwal"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

echo "================================="
echo "OPEN SOURCE AUDIT - $STUDENT_NAME"
echo "================================="
echo "Kernel : $KERNEL"
echo "User   : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Date    :  $DATE"
echo "Software : $SOFTWARE_CHOICE"
