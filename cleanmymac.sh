#!/bin/sh

echo "Initiating the cleaning engines..."
echo "=================================="

CLEANERS=$(cat ~/.cleanmymac/path)/cleaners

    for file in $(ls $CLEANERS); do
       if [ -x $file ]; then
            echo "Running cleaner: " $file && $CLEANERS/$file $@
       else
           echo "Error in running cleaner: " $file
       fi
    done


echo "All done! Your mac is now squeaky clean!"