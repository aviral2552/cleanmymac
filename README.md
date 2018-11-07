# Clean my macOS

Clean My macOS is built for modern macOS systems. It perform maintainance for mostly commonly used components in the core OS and third party tools with a single terminal command.

The system uses a simple plugin system with all "cleaners" located in `~/.cleanmymac/cleaners` directory. Functionality can be added (or removed) by adding (or removing) files in the `~/.cleanmymac/cleaners` directory.

## Pre-requisites

No real requirements. Use the cleaners that you need to, located in the cleaners directory.

## Installation

Open Terminal, go to the folder where you want to install cleanmymac and type

`$ git clone git@github.com:thelamehacker/cleanmymac.git && cd cleanmymac && ./install.sh && cd`

## Supported commands

Update all packages and run all maintainance cleaners

`$ cleanmymac`

Update all packages, run all maintainance scripts and perform cleanup with supported cleaners

`$ cleanmymac cleanup`

## Uninstallation

Note: Uninstallation is not required for updates. Clean My macOS has a self-updated script that executes on every run.

To uninstall, run the following command in terminal

`~/.cleanmymac/setup/uninstall.sh`

## How do cleaners work

Cleaners are located under `~/.cleanmymac/cleaners` directory. You may remove the cleaners that are not applicable on your system.

## How do I contribute

Feel free to fork the project and submit a pull request for new or updated cleaner scripts.
