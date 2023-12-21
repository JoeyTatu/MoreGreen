#!/bin/bash

FILE="dates.log"

cd MoreGreen

# Check if the file exists
if [ ! -e "$FILE" ]; then
    # If it doesn't exist, create it
    touch "$FILE"
fi

git pull
echo "$(date +'%A %d %B %Y %H:%M:%S %Z')" >> "$FILE"
git add .
git commit -m "$(date +'%A %d %B %Y %H:%M:%S %Z')"
git push -u origin main

