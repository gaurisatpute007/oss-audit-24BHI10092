#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions to generate your manifesto"
echo ""

read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What will you build and share freely? " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "----- Open Source Manifesto -----" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in open-source philosophy." >> $OUTPUT
echo "I use $TOOL regularly in my work." >> $OUTPUT
echo "Freedom for me means $FREEDOM." >> $OUTPUT
echo "I aim to build $BUILD and share it with the community." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
