#!/bin/bash
# script.sh - Print system uptime and basic system info

show_help() {
  echo "Usage: $0 [--help] [--version]"
  echo
  echo "Prints uptime and basic system information."
  echo
  echo "  --help     Show this help message"
  echo "  --version  Show script version"
}

show_version() {
  echo "script.sh version 1.1"
}

if [[ "$1" == "--help" ]]; then
  show_help
  exit 0
fi

if [[ "$1" == "--version" ]]; then
  show_version
  exit 0
fi

echo "System Uptime:"
uptime

echo
echo "CPU and Memory Usage:"
top -b -n 1 | head -n 10

exit 0
