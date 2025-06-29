#!/usr/bin/env bash
set -euo pipefail

#Setting path variables
CMM_PATH="$(pwd)"
DEST_DIR="$HOME/.cleanmymac"

# Pick writable Homebrew prefix once
if [[ "$(uname -m)" == "arm64" ]]; then
  BIN_PREFIX="${HOMEBREW_PREFIX:-/opt/homebrew}/bin"
else
  BIN_PREFIX="/usr/local/bin"
fi

echo "Creating target directory..."
mkdir -p "$DEST_DIR"

echo "Copying program files (skips .git)…"
rsync -a --exclude='.git' "$CMM_PATH/" "$DEST_DIR/"

echo "Linking launcher into \$PATH…"
if [[ -w "$BIN_PREFIX" ]]; then
  ln -fs "$DEST_DIR/cleanmymac.sh" "$BIN_PREFIX/cleanmymac"
else
  sudo ln -fs "$DEST_DIR/cleanmymac.sh" "$BIN_PREFIX/cleanmymac"  # requires password on Intel Macs
fi

echo "Setting up configuration file…"
echo "$DEST_DIR" > "$DEST_DIR/path"

echo "Finalising permissions…"
chmod +x "$DEST_DIR/cleanmymac.sh"

echo "Moving installer & uninstaller to the setup folder…"
mkdir -p "$DEST_DIR/setup"
mv "$CMM_PATH/install.sh" "$DEST_DIR/setup/install.sh" || true 
mv "$CMM_PATH/uninstall.sh" "$DEST_DIR/setup/uninstall.sh" || true

echo "Removing installer script..."
trap 'rm -rf "$CMM_PATH"' EXIT  # deferred; avoids race

echo -e "\nClean My macOS has been installed and can be run by typing 'cleanmymac'.\nFor help, run 'cleanmymac help'.\n"
