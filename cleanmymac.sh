#!/usr/bin/env bash

echo "Initiating the cleaning engines..."
echo "=================================="

CLEANERS_DIR=$(cat ~/.cleanmymac/path)/cleaners

for script in $(ls $CLEANERS_DIR); do
  if [ -x "$CLEANERS_DIR/$script" ]; then
    ( $CLEANERS_DIR/$script $@ )
  fi
done

echo "All done! Your mac is now squeaky clean!"