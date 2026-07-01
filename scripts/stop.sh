#!/bin/bash

clear
echo "================================="
echo "      STOP DAC NODE"
echo "================================="

pkill -f gdacnode
pkill -f dacnode

echo
echo "Node stopped."

read -p "Press Enter..."
bash ../dac-node.sh