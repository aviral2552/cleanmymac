#!/bin/sh

# Check if composer is installed and perform updates
if hash composer 2>/dev/null; then
  echo "Updating composer core"
  echo "======================"
  composer global update
  echo ""

  echo "Cleaning composer cache"
  echo "======================="
  composer clearcache
  echo ""

fi