#!/bin/bash

clear

echo "========================================="
echo "        DAC NODE TOOLKIT INSTALLER"
echo "========================================="
echo

# Check root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi

echo "[1/4] Updating package list..."
apt update

echo
echo "[2/4] Installing dependencies..."
apt install -y \
git \
curl \
wget \
jq \
nano \
tmux \
htop \
unzip \
tar

echo
echo "[3/4] Setting permissions..."
chmod +x dac-node.sh
chmod +x install.sh
chmod +x scripts/*.sh

echo
echo "[4/4] Installation completed!"
echo
echo "Run the toolkit using:"
echo
echo "bash dac-node.sh"
echo