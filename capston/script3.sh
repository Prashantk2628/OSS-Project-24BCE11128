#!/bin/bash
# Script 3: Apache Directory Auditor
# Audits permissions for web server security

DIRS=("/etc/apache2" "/var/www/html" "/var/log/apache2" "/usr/sbin")

echo "Starting Directory Audit..."
echo "------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracting Permissions, Owner, and Group [cite: 157]
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "TARGET: $DIR"
        echo "DETAILS: Perms/Owner: $PERMS | Size: $SIZE"
        echo "------------------------------------------"
    else
        echo "[!] Warning: $DIR not found on this system."
    fi
done