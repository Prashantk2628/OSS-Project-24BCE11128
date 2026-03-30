#!/bin/bash
# Script 2: Apache Package Inspector
# Checks for 'apache2' (Ubuntu/Debian) or 'httpd' (CentOS/RHEL)

# Change this to 'httpd' if you are on RedHat/CentOS
PACKAGE="apache2"

echo "Searching for $PACKAGE in the local repository..."

if dpkg -l $PACKAGE &>/dev/null; then
    echo "[SUCCESS] $PACKAGE is installed on this node."
    # Extracting version and summary [cite: 139]
    dpkg -s $PACKAGE | grep -E 'Version|Description'
else
    echo "[ALERT] $PACKAGE is NOT found. Please install via 'sudo apt install $PACKAGE'."
fi

echo "--- Philosophical Context ---"
case $PACKAGE in
    apache2|httpd)
        echo "Note: Apache was the 'A Patchy' server that built the web." ;;
    mysql)
        echo "Note: The world's most popular open-source database." ;;
    *)
        echo "Note: Essential tool in the FOSS ecosystem." ;;
esac