#!/usr/bin/env bash
set -euo pipefail

# Setting path variables
CMM_SRC_DIR="$(pwd)"
DEST_DIR="$HOME/.cleanmymac"

# Pick writable Homebrew prefix
if [[ $(uname -m) == arm64 ]]; then
  BIN_DIR="${HOMEBREW_PREFIX:-/opt/homebrew}/bin"
else
  BIN_DIR="/usr/local/bin"
fi

echo "Copying files…"
mkdir -p "$DEST_DIR"
rsync -a --exclude='.git' "$CMM_SRC_DIR/" "$DEST_DIR/"

echo "Linking binary…"
if [[ -w $BIN_DIR ]]; then
  ln -fs "$DEST_DIR/cleanmymac.sh" "$BIN_DIR/cleanmymac"
else
  # requires password on Intel Macs
  sudo ln -fs "$DEST_DIR/cleanmymac.sh" "$BIN_DIR/cleanmymac"
fi

echo "$DEST_DIR" > "$DEST_DIR/path"

echo "Moving installer & uninstaller to the setup folder…"
mkdir -p "$DEST_DIR/setup"
mv install.sh uninstall.sh "$DEST_DIR/setup/" 2>/dev/null || true

echo "Removing installer script..."
trap '(cd "$HOME" && rm -rf -- "$CMM_SRC_DIR")' EXIT

echo -e "\nClean My macOS has been installed and can be run by typing 'cleanmymac'.\nFor help, run 'cleanmymac help'.\n"
