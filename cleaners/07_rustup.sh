#!/usr/bin/env bash
set -euo pipefail

# Check if rustup is installed and perform updates
if hash rustup 2>/dev/null; then

    echo "Updating rustup core"
    echo "===================="
    rustup update
    echo ""

fi
