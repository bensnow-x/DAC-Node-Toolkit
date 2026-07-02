#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$ROOT_DIR"

clear
echo "=============================="
echo "        START DAC NODE"
echo "=============================="
echo

echo "Starting node..."
echo

# Ganti dengan command DAC asli nanti
echo "./gdacnode --config config/config.toml"

echo
echo "Done."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

echo
read -p "Press Enter to return to menu..."
exec bash "$ROOT_DIR/dac-node.sh"