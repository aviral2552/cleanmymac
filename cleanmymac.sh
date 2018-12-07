#!/bin/sh

echo "Initiating the cleaning engines..."
echo "=================================="
echo ""

CLEANERS=$(cat ~/.cleanmymac/path)/cleaners
METAMODULE=$(cat ~/.cleanmymac/path)/cleaners/00_meta.sh

if [ -z "$1" ]; then
    for file in $(ls $CLEANERS); do
      echo "Running cleaner: " $file && $CLEANERS/$file
    done
else
    $METAMODULE $@
fi

echo "All done! Your mac is now squeaky clean!"