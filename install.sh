#!/bin/sh

# Installer path
CMM_PATH=`pwd`

# Making the directory for installation
echo ""
echo "Creating installation folder..."
mkdir -p ~/.cleanmymac

# Copying Clean My macOS to home directory
echo "Copying files..."
echo "/Users/$USER/.cleanmymac" > ~/.cleanmymac/path
cp -R "${CMM_PATH}/" ~/.cleanmymac

# Adding Clean My macOS in PATH for easy terminal access
echo "Adding cleanmymac command to enviroment for quick access..."
ln -fs ~/.cleanmymac/cleanmymac.sh /usr/local/bin/cleanmymac

# Moving Installer and uninstaller in different setup directory
echo "Moving installer & uninstaller to setup folder..."
cd ~/.cleanmymac
mkdir -p "setup"
mv ~/.cleanmymac/install.sh ~/.cleanmymac/setup/install.sh
mv ~/.cleanmymac/uninstall.sh ~/.cleanmymac/setup/uninstall.sh

# Making the scripts executable and removing extended attributes
echo "Making the scripts executable..."
xattr -rc ~/.cleanmymac/
chmod +x ~/.cleanmymac/cleanmymac.sh

# Removing leftover installation files
rm -rf ${CMM_PATH}

echo ""
echo "Clean My macOS has been installed and can be run by typing cleanmymac"
echo ""