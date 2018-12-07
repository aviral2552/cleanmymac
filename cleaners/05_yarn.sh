#!/bin/sh

# Check if yarn is installed and perform updates
if hash yarn 2>/dev/null; then

  echo "Performing yarn maintainance"
  echo "============================"
  echo ""

  echo "Updating yarn core..."
  yarn global upgrade -s
  echo ""

  echo "Cleaning yarn cache..."
  yarn cache clean
  echo ""

fi
