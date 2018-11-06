#!/usr/bin/env bash

# Check if Anaconda is installed and upgrade packages
if hash conda 2>/dev/null; then
  echo "Updating your Anaconda packages..."
  conda update --all
  echo ""

# Invoked with "cleanmymac cleanup" command
  if [[ $1 == "cleanup" ]]; then
    echo "Cleaning unused Ananconda packages..."
    conda clean -a -y
  fi
fi


