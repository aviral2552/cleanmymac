#!/bin/sh

displayHelp() {
    echo "Standard help page placeholder"
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