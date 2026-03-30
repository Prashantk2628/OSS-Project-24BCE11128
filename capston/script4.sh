#!/bin/bash
# Script 4: Apache Log Analyzer
# Usage: ./script4.sh /var/log/apache2/access.log

LOGFILE=$1
# Default keyword is '404' (File Not Found)
KEYWORD=${2:-"404"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: Apache log file $LOGFILE not found."
    exit 1
fi

echo "Scanning $LOGFILE for '$KEYWORD' incidents..."

while read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Analysis Complete: Found $COUNT instances of '$KEYWORD'."
echo "--- Last 3 matches ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 3