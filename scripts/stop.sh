#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$ROOT_DIR"

clear
echo "=============================="
echo "        STOP DAC NODE"
echo "=============================="
echo

pkill -f gdacnode
pkill -f dacnode
pkill -f geth

echo
echo "Node stopped."

echo
read -p "Press Enter to return to menu..."
exec "$ROOT_DIR/dac-node.sh"