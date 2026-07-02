#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$ROOT_DIR"

clear
echo "=============================="
echo "      RESTART DAC NODE"
echo "=============================="
echo

pkill -f gdacnode
pkill -f dacnode
pkill -f geth

sleep 2

echo "Starting node..."
echo

# Ganti command asli nanti
echo "./gdacnode --config config/config.toml"

echo
echo "Restart complete."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

echo
read -p "Press Enter to return to menu..."
exec bash "$ROOT_DIR/dac-node.sh"