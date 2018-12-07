#!/bin/sh

# Check if brew is installed and perform maintainance
if hash brew 2>/dev/null; then

  echo "Performing Homebrew maintainance"
  echo "================================"
  brew update
  brew upgrade
  brew cask outdated | cut -f 1 | xargs brew cask reinstall
  echo ""

  echo "Calling the brewery doctor for the mandatory health checkup"
  echo "==========================================================="
  brew doctor
  brew missing
  echo ""

  echo "Cleaning the brewery"
  echo "===================="
  brew cleanup -s
  echo ""

fi
