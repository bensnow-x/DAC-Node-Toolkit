#!/bin/bash

clear

echo "=========== SYSTEM INFO =========="

echo
hostname

echo
uname -a

echo
free -h

echo
df -h

echo
uptime

echo
read -p "Press Enter..."
bash ../dac-node.sh