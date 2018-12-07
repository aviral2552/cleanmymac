# Clean my macOS

Clean My macOS is built for modern macOS systems. It performs maintainance for mostly commonly used components in the core OS and third party tools with a single terminal command.

Clean My macOS uses a simple plugin system with all "cleaners" located in `~/.cleanmymac/cleaners` directory. Functionality can be added (or removed) by adding (or removing) files in the directory.

## Pre-requisites

You must have `brew` and `git` installed. You can use the cleaners that you need to or remove the ones that you do not want to use. Cleaners are located in the `~/.cleanmymac/cleaners` directory.

To install Homebrew open terminal and type

`$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

After installing Homebrew, you can install `git` by typing the following in the terminal

`$ brew install git`

## Installation

Open Terminal and type

`$ git clone git@github.com:thelamehacker/cleanmymac.git && cd cleanmymac && ./install.sh && cd`

Note: Clean My macOS is always installed in `~/.cleanmymac` directory

## Supported commands

Update all packages and run all maintainance cleaners on your system

`$ cleanmymac`

Run self-update for Clean My macOS

`$ cleanmymac update`

Display Clean My macOS help page

`$ cleanmymac help`

## Uninstallation

To uninstall, run the following command in terminal

`$ ~/.cleanmymac/setup/uninstall.sh`

Note: Uninstallation is not required for updates. You can run `$ cleanmymac update` to perform auto-update.

## How do cleaners work

Cleaners are located under `~/.cleanmymac/cleaners` directory. You may remove the cleaners that are not applicable on your system.

## How do I contribute

Feel free to fork the project and submit a pull request for new or updated cleaner scripts.