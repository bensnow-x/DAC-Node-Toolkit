#!/bin/bash

clear

echo "============= STATUS ============="

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
read -p "Press Enter..."
bash ../dac-node.sh