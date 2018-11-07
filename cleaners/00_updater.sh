#!/bin/sh

echo "Clean my macOS self update"

pushd "$(cat ~/.cleanmymac/path)" > /dev/null
git pull
popd > /dev/null

echo ""
