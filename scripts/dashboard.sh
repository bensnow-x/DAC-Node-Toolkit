#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$ROOT_DIR"

clear

echo "=============================="
echo "     DAC NODE DASHBOARD"
echo "=============================="
echo

if pgrep -f "gdacnode|dacnode|geth" >/dev/null
then
echo "Status : ONLINE"
else
echo "Status : OFFLINE"
fi

echo
free -h | head -2

echo
df -h /

echo
uptime

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

echo
read -p "Press Enter..."
exit 0