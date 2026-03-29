#!/bin/bash

# Script 3: Disk and PErmission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
	if [ -d "$DIR" ]; then
		PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
		SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
		echo "$DIR => Permissions: $PERMS| Size: $SIZE "
	else
	 echo "$DIR doesn't exist"
	fi
done

echo ""
echo "Checking git config diretory..."

# CHeck Git config folder
if [ -d "/etc/git" ]; then
	ls -ld /etc/git
else
   echo "Git config directory not found"
fi
