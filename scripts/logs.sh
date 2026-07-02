#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$ROOT_DIR"

clear

echo "=============================="
echo "        LIVE LOGS"
echo "=============================="
echo

if [ -f node.log ]; then
tail -f node.log
else
echo "node.log not found."
fi

echo
read -p "Press Enter to return..."

exec bash "$ROOT_DIR/dac-node.sh"