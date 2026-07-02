#!/bin/bash

clear

echo "=================================================="
echo "                 🚀 DAC NODE"
echo "          Blockchain Node Manager"
echo "=================================================="
echo

echo "[1/4] Updating system..."
sudo apt update && sudo apt upgrade -y

echo
echo "[2/4] Installing required packages..."
sudo apt install -y curl wget git jq nano tmux htop unzip tar

echo
echo "[3/4] Creating project directories..."
mkdir -p ~/dac-node
mkdir -p ~/dac-node/logs
mkdir -p ~/dac-node/backups

echo
echo "[4/4] Installation completed!"
echo

echo "Toolkit installed successfully."
echo
echo "Run the toolkit with:"
echo
echo "    bash dac-node.sh"
echo