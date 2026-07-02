#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$ROOT_DIR"

clear

echo "=============================="
echo "        LIVE LOGS"
echo "=============================="
echo

LOGFILE="/root/DAC-Node-Toolkit/node.log"

if [ -f "$LOGFILE" ]; then
    tail -f "$LOGFILE"
else
    echo "node.log not found."
fi
echo "node.log not found."
fi

echo
read -p "Press Enter..."
exit 0