#!/bin/sh

# Check if npm is installed and perform updates
if hash npm 2>/dev/null; then

    echo "Updating npm core"
    echo "================="
    npm install npm@latest -g
    echo ""

    echo "Finding outdated npm packages"
    echo "============================="
    npm outdated -g --depth=0
    echo ""

    echo "Updating npm packages"
    echo "====================="
    npm --depth 9999 update -g --no-save
    echo ""

fi