#!/usr/bin/env bash
set -euo pipefail

display_help() {
  cat <<EOF
NAME
    cleanmymac – simple command-line cleaners for macOS

USAGE
    cleanmymac             # run every cleaner
    cleanmymac update      # self-update the tool
    cleanmymac help        # show this help

PROJECT
    https://github.com/aviral2552/cleanmymac
EOF
}

run_update() {
  echo "Running self-update"
  echo "==================="
  pushd "$(cat "$HOME/.cleanmymac/path")" >/dev/null  || exit 1
  git pull --quiet
  popd >/dev/null
  echo
}

invalid_warning() {
  echo "Invalid argument – run 'cleanmymac help' for supported commands."
  echo
}

# ---------- argument parsing ----------
if (( $# == 0 )); then
  :
else
  case "$1" in
    [uU]|[uU]pdate)  run_update   ;;
    [hH]|help)       display_help ;;
    *)               invalid_warning ;;
  esac
fi
