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
/root/dacnode --datadir /root/.dac/testnet > node.log 2>&1 &

echo
echo "Restart complete."

echo
read -p "Press Enter..."
exit 0