#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

# Check if package is installed
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for description
case $PACKAGE in
    python3) echo "Python: a powerful open-source programming language used worldwide" ;;
    git) echo "Git: version control system created by Linus Torvalds" ;;
    vlc) echo "VLC: open-source multimedia player" ;;
    firefox) echo "Firefox: open-source web browser" ;;
    *) echo "Unknown package" ;;
esac
