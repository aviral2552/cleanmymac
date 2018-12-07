#!/bin/sh

# Check if npm is installed and perform updates
if hash npm 2>/dev/null; then

    echo "Updating npm core"
    echo "================="
    npm install npm@latest -g
    echo ""

    echo "Finding outdated packages"
    echo "========================="
    npm outdated -g --depth=0
    echo ""

    echo "Updating npm packages"
    echo "====================="
    npm update -g
    echo ""

    echo "Cleaning npm cache"
    echo "=================="
    npm cache clean
    echo ""

fi