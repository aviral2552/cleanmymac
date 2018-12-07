#!/bin/sh

# Check if yarn is installed and perform updates
if hash yarn 2>/dev/null; then

  echo "Updating yarn core"
  echo "=================="
  yarn global upgrade -s
  echo ""

  echo "Cleaning yarn cache"
  echo "==================="
  yarn cache clean
  echo ""

fi
