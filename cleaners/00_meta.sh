#!/bin/sh

displayHelp() {
    clear
    echo "NAME"
    echo "    cleanmymac -- a simple command line cleaners for developers using macOS"
    echo ""
    echo "DESCRIPTION"
    echo "    Clean My macOS is built for modern macOS systems. It performs maintainance for mostly commonly used"
    echo "    components in the core OS and third party tools with a single terminal command."
    echo ""
    echo "    The following parameters are supported:"
    echo ""
    echo "    cleanmymac"
    echo "        Runs all cleaners"
    echo ""
    echo "    cleanmymac update"
    echo "        Performs self-update"
    echo ""
    echo "    cleanmymac help"
    echo "        Displays this help"
    echo ""
    echo "PROJECT LINK"
    echo "    https://github.com/thelamehacker/cleanmymac"
    echo ""
    echo ""
}

runUpdate() {
    echo "Running system self-update"
    echo "=========================="
    
    pushd "$(cat ~/.cleanmymac/path)" > /dev/null
    git pull
    popd > /dev/null
    echo ""
}

invalidWarning() {
    echo "You have passed an invalid arugment. Please run 'cleanmymac help' to list supported commands."
    echo ""
}

if [ "$1" == "update" ] || [ "$1" == "UPDATE" ] || [ "$1" == "u" ] || [ "$1" == "U" ]; then
    runUpdate
elif [ "$1" == "help" ] || [ "$1" == "Help" ] || [ "$1" == "h" ] || [ "$1" == "HELP" ]; then
    displayHelp
elif [ -z "$1" ]; then
    :
else
    invalidWarning
fi