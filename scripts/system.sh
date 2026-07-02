#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$ROOT_DIR"

clear

echo "=============================="
echo "        SYSTEM INFO"
echo "=============================="
echo

hostname

echo
uname -a

echo
free -h

echo
df -h

echo
uptime

echo
read -p "Press Enter to return..."

exec bash "$ROOT_DIR/dac-node.sh"