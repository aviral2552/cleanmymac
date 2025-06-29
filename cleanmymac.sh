#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(<"$HOME/.cleanmymac/path")"
CLEANERS_DIR="$ROOT_DIR/cleaners"
METAMODULE="$CLEANERS_DIR/00_meta.sh"

if (( $# == 0 )); then
  echo "Starting up the cleaning engines"
  echo "================================"
  for cleaner in "$CLEANERS_DIR"/*; do
    "$cleaner"
  done
  echo "All done! Your Mac is now squeaky clean!"
  echo
else
  "$METAMODULE" "$@"
fi
