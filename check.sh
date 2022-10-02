#!/bin/bash
GREEN='\033[0;32m'
NC='\e[0m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
#===========================================

echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m            ⇱ SCRIPT PREMIUM FREE 30 DAYS ⇲             \E[0m"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " [01] • Install Script V.1"
echo -e " [02] • Install Script V.2"
echo -e " [00] • Exit"
echo -e " Script V.1 ( Multi Port )"
echo -e " Script V.2 ( Stabile )"
echo -e " Request Acces Script Contact"
echo -e " Telegram = t.me/WaanSuka_Turu"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e  ""
 read -p "  Select Options :  " menu
echo -e   ""
case $menu in
1 | 01)
wget https://script.gabutzz-vpn.my.id/install.sh ; chmod +x install.sh ; ./install.sh
;;
2 | 02)
wget https://gabutzz-vpn.my.id/setup.sh ; chmod +x setup.sh ; ./setup.sh
;;
0 | 00)
exit
;;
*)
exit
;;
esac

