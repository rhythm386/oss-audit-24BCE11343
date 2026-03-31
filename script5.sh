#!/bin/bash

# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"
echo ""

read -p "1. One open-source tool you use daily: " TOOL
read -p "2. What does freedom mean to you (one word)? " FREEDOM
read -p "3. What will you build and share? " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "" > $OUTPUT
echo "----- Open Source Manifesto -----" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in open source." >> $OUTPUT
echo "Using tools like $TOOL empowers me." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "I will build $BUILD and share it with the world." >> $OUTPUT
echo "Together, we grow through collaboration." >> $OUTPUT

echo ""
echo "Manifesto saved in $OUTPUT"
echo ""
cat $OUTPUT
