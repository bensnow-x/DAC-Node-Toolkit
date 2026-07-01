#!/bin/bash

while true; do
clear

GREEN="\033[1;32m"
RED="\033[1;31m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
CYAN="\033[1;36m"
WHITE="\033[1;37m"
NC="\033[0m"

echo -e "${CYAN}"
echo "╔══════════════════════════════════════════════════════╗"
echo "║              🚀 DAC NODE TOOLKIT v1.0               ║"
echo "╚══════════════════════════════════════════════════════╝"
echo -e "${NC}"

PEERS=$(pgrep -f gdacnode >/dev/null && echo "Connected" || echo "Offline")

if pgrep -f gdacnode >/dev/null; then
STATUS="${GREEN}● RUNNING${NC}"
else
STATUS="${RED}● OFFLINE${NC}"
fi

echo -e "Status   : $STATUS"
echo -e "Peers    : ${YELLOW}$PEERS${NC}"
echo ""

echo -e "${BLUE}Memory${NC}"
free -h

echo ""

echo -e "${BLUE}CPU${NC}"
top -b -n1 | head -8

echo ""

echo -e "${CYAN}Time : $(date)${NC}"

sleep 2
done