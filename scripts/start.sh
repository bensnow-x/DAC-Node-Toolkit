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

# Jalankan node
./gdacnode --config config/config.toml > node.log 2>&1 &

echo
echo "Done."

echo
read -p "Press Enter..."
exit 0