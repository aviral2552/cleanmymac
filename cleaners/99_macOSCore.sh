#!/usr/bin/env bash
set -euo pipefail

#coreOSCleaner () {

#echo "Rebuilding XPC cache..."
#sudo /usr/libexec/xpchelper --rebuild-cache >/dev/null 2>/dev/null

#echo "Rebuilding CoreDuet..."
#sudo rm -fr /var/db/coreduet/* >/dev/null 2>/dev/null

#echo "Rebuilding launch services..."
#sudo /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -seed -domain local -domain system -domain user >/dev/null 2>/dev/null

#echo "Flushing DNS cache and restarting mDNS..."
#sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder >/dev/null 2>/dev/null

#echo "Clearing BootCache..."
#sudo rm -f /private/var/db/BootCache.playlist >/dev/null 2>/dev/null

#echo "Updating dyld cache..."
#sudo update_dyld_shared_cache -root / -force >/dev/null 2>/dev/null

#echo "Rebuilding Kernel extension cache..."
##sudo touch /System/Library/Extensions && sudo kextcache -u / >/dev/null 2>/dev/null
#sudo kextcache -u / >/dev/null 2>/dev/null # Minor tidbit solution with Big Sur

#echo "Running daily, weekly and monthly maintenance scripts..."
#sudo periodic daily weekly monthly >/dev/null 2>/dev/null

echo ""

#}

#echo "macOS core cleaner"
#echo "=================="
#echo "Note: You will need to provide administrative access for macOS maintenance scripts to run."
#echo ""

#if [ $(id -u) != 0 ]; then
#   sudo "$0"
#   exit
#fi

#coreOSCleaner
