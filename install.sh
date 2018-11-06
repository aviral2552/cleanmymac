#!/usr/bin/env bash

CMM_PATH=`pwd`

# Adding Clean My macOS in PATH for easy terminal access
ln -fs "${CMM_PATH}"/cleanmymac.sh /usr/local/bin/cleanmymac

# Copying Clean My macOS to home directory
mkdir -p ~/.cleanmymac && echo "${CMM_PATH}" > ~/.cleanmymac/path
cp -R "${CMM_PATH}/cleaners" ~/.cleanmymac

echo "Clean My macOS has been installed. Run Clean My macOS command by typing cleanmymac in your terminal window!"