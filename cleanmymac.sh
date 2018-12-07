#!/bin/sh

CLEANERS=$(cat ~/.cleanmymac/path)/cleaners
METAMODULE=$(cat ~/.cleanmymac/path)/cleaners/00_meta.sh

if [ -z "$1" ]; then
    echo "Initiating the cleaning engines..."
    echo "=================================="
    echo ""
    for file in $(ls $CLEANERS); do
        $CLEANERS/$file
    done
    echo "All done! Your mac is now squeaky clean!"
    echo ""
else
    $METAMODULE $@
fi