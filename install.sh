#!/usr/bin/env bash

CMM_PATH=`pwd`

# Make Clean My Mac accessible in PATH
ln -fs "${CMM_PATH}"/cleanmymac.sh /usr/local/bin/cleanmymac

# Store Clean My Mac stuff in home directory
mkdir -p ~/.cleanmymac && echo "${CMM_PATH}" > ~/.cleanmymac/path
cp -R "${CMM_PATH}/cleaners" ~/.cleanmymac

echo "Clean My Mac has been installed. Run Clean My Mac command!"