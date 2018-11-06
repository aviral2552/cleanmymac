#!/usr/bin/env bash

# Check if Anaconda is installed and upgrade packages
if hash conda 2>/dev/null; then
  echo "Updating your Anaconda packages..."
  conda update --all
  echo ""

fi
