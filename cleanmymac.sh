#!/usr/bin/env bash

echo "Initiating the engines..."
echo ""

MAX_WIDTH=50
CURRENT_WIDTH=$(tput cols)
COLUMNS=$(( CURRENT_WIDTH > MAX_WIDTH ? MAX_WIDTH : CURRENT_WIDTH ))
printf '%*s\n' "${COLUMNS}" '' | tr ' ' =

CLEANERS_DIR=$(cat ~/.cleanmymac/path)/cleaners

for script in $(ls $CLEANERS_DIR); do
  if [ -x "$CLEANERS_DIR/$script" ]; then
    $CLEANERS_DIR/$script $@
  fi
done

echo "All done! Your mac is not squeaky clean!"