#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

# Check if python is installed using command
if command -v python3 >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
    python3 --version
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    python3) echo "Python: a powerful open-source programming language used worldwide" ;;
    git) echo "Git: version control system created by Linus Torvalds" ;;
    vlc) echo "VLC: open-source multimedia player" ;;
    firefox) echo "Firefox: open-source web browser" ;;
    *) echo "Unknown package" ;;
esac
