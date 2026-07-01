#!/bin/bash

clear
echo "Restarting node..."

pkill -f gdacnode
pkill -f dacnode

sleep 2

# Ganti dengan command start asli nanti
echo "./gdacnode --config config.toml"

echo
echo "Restart complete."

read -p "Press Enter..."
bash ../dac-node.sh