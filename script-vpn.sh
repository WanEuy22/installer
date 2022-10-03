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

clear
echo -e "${blu}=========================================${NC}"
echo -e "${GREEN} Recode Script   : @WaanStore${NC}"
echo -e "${GREEN} Base Script     : @Horas${NC}"
echo -e "${GREEN} Oprek Script    : @bokir${NC}"
echo -e "${GREEN} License Script  : @Munzz${NC}"
echo -e "${blu}=========================================${NC}"
read -p "Input your license script : " pwd
echo -e "${blu}=========================================${NC}"

user=$( curl -s "https://githubusercontent.com/WanEuy22/installer/main/key-license.txt" | grep $pwd )
if [ "$pwd" == "$user" ];
then

clear
echo -e "${CYAN}Checking License....${NC}"
sleep 2
clear
echo -e "${GREEN}License Verification Success!${NC}"
sleep 2
clear
echo -e "${yl}Please wait to proces install...${NC}" 
sleep 3
clear
rm -rf /root/script-vpn.sh
wget -O /root/install-sc.sh "https://raw.githubusercontent.com/WanEuy22/main/install-sc.sh" >/dev/null 2>&1
chmod +x /root/install-sc.sh
./install-sc.sh

else

clear
echo -e "${CYAN}Checking License...${NC}"
sleep 2
clear
echo -e "\E[41;1;39m License wrong or expired.!!\E[0m"
sleep 2
clear
echo -e "\E[41;1;39m License Expired or wrong, then the script installation failed..\E[0m"
sleep 2
echo -e "${GREEN}Contact admin to get license..${NC}"
rm -rf /root/script-vpn.sh
exit

fi
