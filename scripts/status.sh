#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$ROOT_DIR"

clear

echo "=============================="
echo "          STATUS"
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
uptime

echo
read -p "Press Enter to return..."

exec bash "$ROOT_DIR/dac-node.sh"