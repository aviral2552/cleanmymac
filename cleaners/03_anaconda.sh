#!/bin/sh

# Check if Anaconda is installed and upgrade packages
if hash conda 2>/dev/null; then
  echo "Updating your Anaconda packages..."
  conda update --all
  echo ""


### Keeping cleanup disabled.
### con update --all updates and installs packages
### and conda clean will remove any unused packages
### thus making it redundant for most users

# Invoked with "cleanmymac cleanup" command
#  if [[ $1 == "cleanup" ]]; then
#    echo "Cleaning unused Ananconda packages..."
#    conda clean -a -y
#  fi

fi


