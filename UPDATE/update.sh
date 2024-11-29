#!/bin/bash
#Multiport Fallback Lite By Vinstechmy
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'

# Github Profile Repo
Git_Profile="https://raw.githubusercontent.com/vinstechmy/MultiportFallbackLite/main"

echo -e "[ ${green}INFO${NC} ] Update Starting Now . . ."
echo ""
sleep 1
cd /usr/bin

rm get-backres
rm backupmenu
rm menu
rm menu-vless
rm menu-xray
rm dns
rm limit-speed

#rm xp

wget -O get-backres "${Git_Profile}/OTHERS/get-backres.sh" && chmod +x /usr/bin/get-backres
wget -O dns "${Git_Profile}/OTHERS/dns.sh" && chmod +x /usr/bin/dns
wget -O limit "${Git_Profile}/OTHERS/limit-speed.sh" && chmod +x /usr/bin/limit
wget -O backupmenu "${Git_Profile}/MENU/backupmenu.sh" && chmod +x /usr/bin/backupmenu
wget -O menu "${Git_Profile}/MENU/menu.sh" && chmod +x /usr/bin/menu
wget -O menu-vless "${Git_Profile}/MENU/menu-vless.sh" && chmod +x /usr/bin/menu-vless
wget -O menu-xray "${Git_Profile}/MENU/menu-xray.sh" && chmod +x /usr/bin/menu-xray

#wget -O xp "${Git_Profile}/OTHERS/xp.sh" && chmod +x /usr/bin/xp
cd
clear
echo -e "[${green}INFO${NC}] Successfully Install New Update File !"
sleep 1
echo -e "[${green}INFO${NC}] Please Restart All Services !"
sleep 2
clear
rm update.sh

# // script version check
serverV=$( curl -sS https://raw.githubusercontent.com/vinstechmy/MultiportFallbackLite/main/UPDATE/version)
echo "$serverV" > /home/ver
echo ""
echo -e "[ ${green}INFO${NC} ] Successfully Up To Date!"
echo ""
read -n1 -r -p "Press any key to continue..." ; menu ;
