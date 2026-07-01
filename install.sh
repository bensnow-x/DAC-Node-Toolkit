#!/bin/bash

echo "=========================================="
echo "     DAC Node Toolkit Installer v1.0"
echo "=========================================="

echo ""
echo "[1/4] Updating system..."
sudo apt update && sudo apt upgrade -y

echo ""
echo "[2/4] Installing dependencies..."
sudo apt install -y curl wget git jq tmux htop nano

echo ""
echo "[3/4] Creating toolkit directory..."
mkdir -p ~/dac-toolkit

echo ""
echo "[4/4] Installation complete!"
echo ""
echo "Next step:"
echo "Run the dashboard with:"
echo "bash dashboard.sh"