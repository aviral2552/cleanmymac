#!/bin/sh

# Check if npm is installed and perform updates
if hash npm 2>/dev/null; then

    echo "Performing npm maintainance"
    echo "==========================="
    echo ""

    echo "Updating npm core..."
    npm install npm@latest -g
    echo ""

    echo "Finding outdated npm packages..."
    npm outdated -g --depth=0
    echo ""

    echo "Updating npm packages..."
    npm --depth 9999 update -g --no-save
    echo ""

fi