#!/bin/sh

# Check if Atom or Atom beta is installed and perform updates

if hash apm 2>/dev/null; then
    echo "Updating Atom packages"
    echo "======================"
    apm upgrade --no-confirm
    echo ""
    
fi

if hash apm-beta 2>/dev/null; then
    echo "Updating Atom beta packages"
    echo "==========================="
    apm-beta upgrade --no-confirm
    echo ""

fi