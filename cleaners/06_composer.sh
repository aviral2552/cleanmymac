#!/bin/sh

# Check if composer is installed and perform updates
if hash composer 2>/dev/null; then

  echo "Performing composer maintainance"
  echo "================================"
  echo ""

  echo "Updating composer core..."
  composer global update
  echo ""

  echo "Cleaning composer cache..."
  composer clearcache
  echo ""

fi