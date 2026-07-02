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
/root/dacnode --datadir /root/.dac/testnet > node.log 2>&1 &

echo
echo "Done."

echo
read -p "Press Enter to return to menu..."

echo "ROOT_DIR=$ROOT_DIR"

exec "$ROOT_DIR/dac-node.sh"