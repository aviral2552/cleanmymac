#!/usr/bin/env bash
set -euo pipefail

echo "Removing launcher…"
BIN_PATH="$(command -v cleanmymac || true)"
if [ -n "$BIN_PATH" ]; then
  if [ -w "$BIN_PATH" ]; then
    rm -f -- "$BIN_PATH"
  else
    echo "$BIN_PATH is not writable; escalating with sudo"
    sudo rm -f -- "$BIN_PATH"
  fi
else
  echo "No cleanmymac executable found in \$PATH"
fi

echo "Removing user data…"
CMM_DIR="$HOME/.cleanmymac"
if [ -d "$CMM_DIR" ]; then
  rm -rf -- "$CMM_DIR"
else
  echo "$CMM_DIR not present – nothing to remove"
fi

echo "Clean My macOS has been uninstalled. :("
