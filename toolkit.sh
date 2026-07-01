#!/bin/bash

GREEN="\033[1;32m"
RED="\033[1;31m"
YELLOW="\033[1;33m"
CYAN="\033[1;36m"
NC="\033[0m"

while true
do
clear

echo -e "${CYAN}"
echo "╔══════════════════════════════════════════════╗"
echo "║         🚀 DAC NODE TOOLKIT v3.0            ║"
echo "╚══════════════════════════════════════════════╝"
echo -e "${NC}"

if pgrep -fa "gdac|geth|dacnode" >/dev/null; then
STATUS="${GREEN}🟢 ONLINE${NC}"
else
STATUS="${RED}🔴 OFFLINE${NC}"
fi

echo -e "Node Status : $STATUS"
echo "Network     : DAC Testnet"
echo

echo "════════════ MENU ════════════"
echo
echo " [1] Dashboard"
echo " [2] System Info"
echo " [3] Disk Usage"
echo " [4] Memory Usage"
echo " [5] CPU Load"
echo " [6] Exit"
echo
read -p "Select Menu : " menu

case $menu in
1)
bash dashboard-v2.sh
read -p "Press Enter..."
;;
2)
clear
hostname
uname -a
uptime
read -p "Press Enter..."
;;
3)
clear
df -h
read -p "Press Enter..."
;;
4)
clear
free -h
read -p "Press Enter..."
;;
5)
clear
cat /proc/loadavg
uptime
read -p "Press Enter..."
;;
6)
exit
;;
*)
echo "Invalid Menu!"
sleep 1
;;
esac

done