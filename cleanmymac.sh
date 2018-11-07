#!/bin/sh

echo "Initiating the cleaning engines..."
echo "=================================="

CLEANERS=$(cat ~/.cleanmymac/path)/cleaners

    for file in $(ls $CLEANERS); do
        echo "Running cleaner: " $file && $CLEANERS/$file $@
    done

echo "All done! Your mac is now squeaky clean!"