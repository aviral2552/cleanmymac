#!/usr/bin/env bash

CMM_PATH=`pwd`

# Copying Clean My macOS to home directory
mkdir -p ~/.cleanmymac && echo "${CMM_PATH}" > ~/.cleanmymac/path
cp -R "${CMM_PATH}/" ~/.cleanmymac

# Adding Clean My macOS in PATH for easy terminal access
ln -fs ~/.cleanmymac/cleanmymac.sh /usr/local/bin/cleanmymac

echo ""
echo "Clean My macOS has been installed."
echo "Run Clean My macOS command by typing cleanmymac in your terminal window!"
echo ""