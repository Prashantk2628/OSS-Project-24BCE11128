#!/bin/bash
# Script 5: Personalized OSS Manifesto

echo "--- Create Your OSS Manifesto ---"

read -p "1. Favorite OSS Tool (e.g., Apache): " TOOL
read -p "2. Define 'Freedom' in one word: " FREEDOM
read -p "3. What would you build for the community? " BUILD

DATE=$(date +'%d %B %Y')
FILE="manifesto_$(whoami).txt"

# Generating the paragraph [cite: 199, 200]
{
    echo "OSS MANIFESTO - Created on $DATE"
    echo "--------------------------------"
    echo "I believe in the power of tools like $TOOL."
    echo "To me, software development is about $FREEDOM."
    echo "In the spirit of sharing, I commit to building $BUILD"
    echo "and releasing it under an open license for the world."
} > "$FILE"

echo "Your manifesto has been saved to $FILE."
cat "$FILE"