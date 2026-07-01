#!/bin/bash

clear

CYAN="\e[36m"
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
WHITE="\e[97m"
BLUE="\e[34m"
NC="\e[0m"

while true; do
clear

if pgrep -f dacnode >/dev/null; then
    STATUS="${GREEN}● RUNNING${NC}"
else
    STATUS="${RED}● OFFLINE${NC}"
fi

echo -e "${CYAN}"
echo "╔══════════════════════════════════════════════╗"
echo "║          🚀 DAC NODE TOOLKIT v2.0           ║"
echo "╚══════════════════════════════════════════════╝"
echo -e "${NC}"

echo -e "Status   : $STATUS"
echo -e "Network  : DAC Testnet"
echo -e "Peers    : Loading..."
echo -e "Block    : Loading..."
echo -e "Sync     : Loading..."
echo

echo -e "${BLUE}══════════ SYSTEM ══════════${NC}"
free -h | head -2
echo
top -b -n1 | head -5

echo
echo -e "${YELLOW}══════════ MENU ══════════${NC}"
echo "1. View Logs"
echo "2. Restart Node"
echo "3. Explorer"
echo "4. Update Toolkit"
echo "0. Exit"

echo
echo -e "${WHITE}$(date)${NC}"

sleep 2
done