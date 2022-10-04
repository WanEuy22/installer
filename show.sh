#!/bin/bash
# Menu For Script
# Edition : Stable Edition V1.0
# Auther  : AWALUDIN FERIYANTO
# (C) Copyright 2021-2022 By RIDDEV
# =========================================

# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.utf8'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="autosc.me/aio"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther="XdrgVPN"

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
		echo -e "${EROR} Please Run This Script As Root User !"
		exit 1
fi

# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )

# // SSH Websocket Proxy
ssh_ws=$( systemctl status ws-epro | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${GREEN}ON${NC}"
else
    status_ws="${GREEN}ON${NC}"
fi

# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // SSH Websocket Proxy
xray=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi


clear
clear
clear
clear
echo -e "${BLUE}╒════════════════════════════════════════════╕\033[0m${NC}"
echo -e "\E[41;1;39m            ⇱ INFORMASI VPS ⇲              \E[0m"
echo -e "${BLUE}╘════════════════════════════════════════════╛\033[0m${NC}"

echo -e "Sever Uptime        ${PURPLE}=${NC} $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "Current Time        ${PURPLE}=${NC} $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "Operating System    ${PURPLE}=${NC} $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' ) ( $( uname -m) )"
echo -e "Current Domain      ${PURPLE}=${NC} $( cat /etc/xray/domain )"
echo -e "Server IP           ${PURPLE}=${NC} ${IP}"
echo -e "Recode Script       ${PURPLE}=${NC} WaanStore"

echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                     ⇱ STATUS LAYANAN ⇲                       \E[0m"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -e " [ SSH Websocket : ${status_ws} ]     [ XRAY : ${status_xray} ]      [ NGINX : ${status_nginx} ]"
echo -e ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                      ⇱ MENU LAYANAN ⇲                        \E[0m"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -e " [${GREEN}01${NC}]${PURPLE} •${NC} ${YELLOW}Menu SSH WS${NC}             [${GREEN}07${NC}]${PURPLE} •${NC} ${YELLOW}Status Layanan${NC}"
echo -e " [${GREEN}02${NC}]${PURPLE} •${NC} ${YELLOW}Menu VMESS${NC}              [${GREEN}08${NC}]${PURPLE} •${NC} ${YELLOW}SpeedTest VPS${NC}"
echo -e " [${GREEN}03${NC}]${PURPLE} •${NC} ${YELLOW}Menu TROJAN${NC}             [${GREEN}09${NC}]${PURPLE} •${NC} ${YELLOW}Change Banner SSH${NC}"
echo -e " [${GREEN}04${NC}]${PURPLE} •${NC} ${YELLOW}Menu SS WS${NC}              [${GREEN}10${NC}]${PURPLE} •${NC} ${YELLOW}Renew Certificate${NC}"
echo -e " [${GREEN}05${NC}]${PURPLE} •${NC} ${YELLOW}Add New Domain${NC}          [${GREEN}11${NC}]${PURPLE} •${NC} ${YELLOW}Cek Spek VPS${NC}"
echo -e " [${GREEN}06${NC}]${PURPLE} •${NC} ${YELLOW}Reboot Your VPS${NC}         [${GREEN}12${NC}]${PURPLE} •${NC} ${YELLOW}Restart Service${NC}"
echo -e ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                    ⇱ SCRIPT SSH & XRAY ⇲                     \E[0m"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " ${CYAN}Client Name${NC}    ${PURPLE}=${NC} ${CYAN}Testing Script${NC}"
echo -e " ${CYAN}Kategori${NC}       ${PURPLE}=${NC} ${CYAN}Free Script${NC}"
echo -e " ${CYAN}Script Update${NC}  ${PURPLE}=${NC} ${CYAN}V.2${NC}"
echo -e " ${CYAN}Fix Script By${NC}  ${PURPLE}=${NC} ${CYAN}Waan Store${NC}"
echo -e " ${CYAN}Regis IP${NC}       ${PURPLE}=${NC} ${CYAN}t.me/WaanSuka_Turu${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e ""

read -p "Select Options [ 1 - 12 ] : " menu
case $menu in
1 | 01)
clear
ssh-menu
;;
2 | 02)
clear
v2ray-menu
;;
3 | 03)
clear
trojan-menu
;;
4 | 04)
clear
ssws-menu
;;
5 | 05)
clear
add-host
;;
6 | 06)
clear
reboot
;;
7 | 07)
clear
running
;;
8 | 08)
clear
speedtest
;;
9 | 09)
clear
banner
;;
10)
clear
crtv2ray
;;
11 | 11)
clear
spek
;;
12 | 12)
clear
restart
;;
*)
clear
menu
;;
esac
