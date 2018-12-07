#!/bin/sh

# Check if Anaconda is installed and upgrade packages
if hash conda 2>/dev/null; then

  echo "Updating Anaconda packages"
  echo "=========================="
  conda update --all
  echo ""

fi


