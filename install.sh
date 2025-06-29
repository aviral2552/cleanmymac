#!/usr/bin/env bash
set -euo pipefail

# Installer path
CMM_PATH=`pwd`
DEST_DIR="$HOME/.cleanmymac"

# Pick a writable bin prefix automatically
if [[ "$(uname -m)" == "arm64" ]]; then
  BIN_PREFIX="${HOMEBREW_PREFIX:-/opt/homebrew}/bin"
else
  BIN_PREFIX="/usr/local/bin"
fi

echo "Creating target directory..."
mkdir -p "$DEST_DIR"

echo "Copying program files (skips .git) ..."
rsync -a --exclude='.git' "$PWD/" "$DEST_DIR/"

echo "Linking launcher into \$PATH..."
if [[ -w "$BIN_PREFIX" ]]; then
  ln -fs "$DEST_DIR/cleanmymac.sh" "$BIN_PREFIX/cleanmymac"
else
  sudo ln -fs "$DEST_DIR/cleanmymac.sh" "$BIN_PREFIX/cleanmymac"
fi

echo "Setting up configuration file..."
echo "/Users/$USER/.cleanmymac" > ~/.cleanmymac/path

echo "Finalizing permissions..."
chmod -R u+w "$DEST_DIR"
xattr -cr "$DEST_DIR/cleanmymac.sh"
chmod +x "$DEST_DIR/cleanmymac.sh"

echo "Moving installer & uninstaller to setup folder..."
cd ~/.cleanmymac
mkdir -p "setup"
mv ~/.cleanmymac/install.sh ~/.cleanmymac/setup/install.sh
mv ~/.cleanmymac/uninstall.sh ~/.cleanmymac/setup/uninstall.sh

echo "Removing installer script..."
rm -rf ${CMM_PATH}

echo ""
echo "Clean My macOS has been installed and can be run by typing 'cleanmymac'."
echo "For help, run 'cleanmymac help'."
echo ""
