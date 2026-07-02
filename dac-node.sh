#!/bin/bash

clear

echo "=================================================="
echo "               🚀 DAC NODE"
echo "         Blockchain Node Manager"
echo "=================================================="
echo
echo "[1] Start Node"
echo "[2] Stop Node"
echo "[3] Restart Node"
echo "[4] Dashboard"
echo "[5] Live Logs"
echo "[6] Node Status"
echo "[7] System Info"
echo "[8] Update Toolkit"
echo "[9] Git Pull"
echo "[0] Exit"
echo
read -p "Select Menu: " menu

case $menu in
1) bash scripts/start.sh ;;
2) bash scripts/stop.sh ;;
3) bash scripts/restart.sh ;;
4) bash scripts/dashboard.sh ;;
5) bash scripts/logs.sh ;;
6) bash scripts/status.sh ;;
7) bash scripts/system.sh ;;
8) bash install.sh ;;
9) git pull ;;
0) exit ;;
*) echo "Invalid menu." ;;
esac

echo
read -p "Press Enter to return..."
exec "$ROOT_DIR/dac-node.sh"