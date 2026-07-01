#!/bin/bash

clear
echo "=================================="
echo "       STARTING DAC NODE"
echo "=================================="

echo
echo "Checking node..."

if pgrep -f "gdacnode\|dacnode\|geth" >/dev/null; then
    echo "Node is already running."
else
    echo "No node process found."
    echo
    echo "Edit this script with your actual DAC start command."
    echo
    echo "Example:"
    echo "./gdacnode --config config.toml"
fi

echo
read -p "Press Enter to return..."
bash ../dac-node.sh