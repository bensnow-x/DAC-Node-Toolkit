#!/bin/bash

GREEN="\e[32m"
RED="\e[31m"
CYAN="\e[36m"
BLUE="\e[34m"
YELLOW="\e[33m"
NC="\e[0m"

clear

echo -e "${CYAN}"
echo "=============================================================="
echo "              🚀 DAC NODE TOOLKIT v2.1"
echo "=============================================================="
echo -e "${NC}"

if pgrep -fa "gdac|geth|dacnode" >/dev/null; then
STATUS="${GREEN}ONLINE${NC}"
else
STATUS="${RED}OFFLINE${NC}"
fi

echo -e "Status   : $STATUS"
echo -e "Network  : DAC Testnet"
echo -e "Peers    : Loading..."
echo -e "Block    : Loading..."
echo -e "Sync     : Loading..."
echo

echo -e "${BLUE}========== SYSTEM ==========${NC}"
free -h | head -2
echo
echo "CPU Load : $(cat /proc/loadavg)"
echo "Uptime   : $(uptime -p)"
echo

echo -e "${YELLOW}=========== INFO ===========${NC}"
echo "Hostname : $(hostname)"
echo "Kernel   : $(uname -r)"
echo "Time     : $(date)"
echo

echo "=============================================="
echo " Dashboard by DAC Node Toolkit"
echo "=============================================="