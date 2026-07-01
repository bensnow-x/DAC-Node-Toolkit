#!/bin/bash

GREEN="\e[32m"
RED="\e[31m"
CYAN="\e[36m"
YELLOW="\e[33m"
BLUE="\e[34m"
NC="\e[0m"

while true
do
clear

echo -e "${BLUE}╔══════════════════════════════════════╗${NC}"
echo -e "${BLUE}║        🚀 DAC NODE TOOLKIT          ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════╝${NC}"

echo ""
echo -e "${GREEN}🟢 Status : Running${NC}"
echo -e "${CYAN}🕒 Time   : $(date)${NC}"
echo ""

echo -e "${YELLOW}💾 Memory${NC}"
free -h

echo ""
echo -e "${YELLOW}🔥 CPU${NC}"
top -bn1 | head -5

sleep 2
done