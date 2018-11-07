#!/bin/sh

# Check if Anaconda is installed and upgrade packages
if hash conda 2>/dev/null; then
  echo "Updating your Anaconda packages..."
  conda update --all
  echo ""


### Keeping cleanup disabled as the command above downloads and updates the all packages
### and cleanup will remove the unused packages, thus uselessly downloading packages.

# Invoked with "cleanmymac cleanup" command
#  if [[ $1 == "cleanup" ]]; then
#    echo "Cleaning unused Ananconda packages..."
#    conda clean -a -y
#  fi
fi


