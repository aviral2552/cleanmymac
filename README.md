# Clean my macOS
A placeholder for next-generation intelligent macOS cleaner program

The end goal is to create a scalable and extensible program that works through custom plugin system. And is able to carry out most conservative cleaning and optimizations for modern macOS machines with a single terminal command. The project will be distributed through Homebrew.

# Pre-requisites

No real requirements. Use the cleaners that you need to, located in the cleaners directory.

## Installation

Open Terminal and type

`$ git clone git@github.com:thelamehacker/cleanmymac.git && cd cleanmymac && ./install.sh`

## Supported commands

Update all packages and run all maintainance cleaners

`$ cleanmymac`

Update all packages, run all maintainance scripts and perform cleanup with supported cleaners

`$ cleanmymac cleanup`

## How do cleaners work

Cleaners are located under `~/.cleanmymac/cleaners` directory. You may remove the cleaners that are not applicable on your system.

## How do I contribute

Feel free to fork the project and submit a pull request for new or updated cleaner scripts.
