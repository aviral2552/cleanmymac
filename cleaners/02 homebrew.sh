#!/usr/bin/env bash

# Check if brew is installed and perform maintainance
if hash brew 2>/dev/null; then
  echo "Performing Homebrew maintainance..."
  brew update
  brew upgrade
  brew cask outdated | cut -f 1 | xargs brew cask reinstall
  echo ""

  echo "Calling the doctor for a mandatory health checkup..."
  brew doctor
  brew missing
  echo ""

  # Invoked with "cleanmymac cleanup" command
  if [[ $1 == "cleanup" ]]; then
    echo "🌬   Cleaning brewery"
    brew cleanup -s
  fi
fi
