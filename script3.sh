#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/tmp" "/c/Windows/System32")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    echo "Checking: $DIR"
    
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" 2>/dev/null | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
    
    echo ""
done

# Python check
if command -v python3 >/dev/null 2>&1; then
    echo "Python is installed on this system"
else
    echo "Python not found"
fi
