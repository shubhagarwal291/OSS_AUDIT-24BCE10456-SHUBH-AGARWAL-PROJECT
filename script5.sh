#!/bin/bash

echo "Answer the following"
echo ""

read -p "1. Name one open source tool to use: " TOOL
read -p "2. In one word, what does freedom mean to you?" FREEDOM
read -p "3. Name one thing you would build and share: " BUILD

DATE=$(date '+%D %B %Y')
SER=$(whoami)
OUTPUT="manifesto_$USER.txt"

echo "" > $OUTPUT
echo "OPEN Souce Manifesto" >> $OUTPUT
echo "" >> $OUTPUT

echo  "I use $TOOL everyday, and it represents $FREEDOM to me." >> $OUTPUT
echo "IN the future, I would like to build $BUILD and share it with the world." >> $OUTPUT
echo "I believe open souce empowers people to learn, collobprate and innovate freely" >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
