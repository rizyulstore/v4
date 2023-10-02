#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################



Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON]${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(grep -c -E "^# Autokill" /etc/cron.d/tendang)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
# color
gr="\e[1;32m" # HIJAU
BIWhite='\033[1;97m' # White
cy="\e[1;36m" # CYAN
wh="\e[1;37m" # PUTIH
pr="\e[1;35m" # UNGU
ye="\e[1;33m" # KUNING
NC="\033[0m"  # PENUTUP

clear

echo -e "${BIWhite} ┌───────────────────────────────────────────┐${NC}"
echo -e "${BIWhite} │                AUTOKILL SSH               │${NC}"
echo -e "${BIWhite} │===========================================│"
echo -e " ${BIWhite}│ Status Autokill : $sts        ${NC}${white}           │"
echo -e " ${BIWhite}│ ${NC}${white}                                          │"
echo -e " ${BIWhite}│  ${wh}[•1]${NC}  AutoKill dalam 5 Minutes${NC}${white}           │"
echo -e " ${BIWhite}│  ${wh}[•2]${NC}  AutoKill dalam 10 Minutes${NC}${white}          │"
echo -e " ${BIWhite}│  ${wh}[•3]${NC}  AutoKill dalam 15 Minutes${NC}${white}          │"
echo -e " ${BIWhite}│  ${wh}[•4]${NC}  Turn Off AutoKill/MultiLogin${NC}${white}       │"
echo -e " ${BIWhite}│  ${ye}[•0]${NC} ${ye} Back to Menu${NC}${white}                      │"
echo -e " ${BIWhite}└───────────────────────────────────────────┘${NC}"
echo -e "${ye}"
read -p "Select [1-4 or 0] :  " AutoKill
if [ -z $AutoKill ]; then
autokill-menu
fi
read -p "Multilogin Maximum Number Of Allowed: " max
echo -e ""
case $AutoKill in
                1)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >/etc/cron.d/tendang
                echo "*/5 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 5 Minutes"      
                echo -e ""
                echo -e "======================================"                                                                                                                               
                service cron restart >/dev/null 2>&1
                service cron reload >/dev/null 2>&1                                                                  
                ;;
                2)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >/etc/cron.d/tendang
                echo "*/10 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 10 Minutes"
                echo -e ""
                echo -e "======================================"
                service cron restart >/dev/null 2>&1
                service cron reload >/dev/null 2>&1
                ;;
                3)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >/etc/cron.d/tendang
                echo "*/15 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 15 Minutes"
                echo -e ""
                echo -e "======================================"
                service cron restart >/dev/null 2>&1
                service cron reload >/dev/null 2>&1
                ;;
                4)
                clear
                rm /etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      AutoKill MultiLogin Turned Off  "
                echo -e ""
                echo -e "======================================"
                service cron restart >/dev/null 2>&1
                service cron reload >/dev/null 2>&1
                ;;
                x)
                clear
                autokill-menu
                ;;
                esac
read -n 1 -s -r -p "Press any key to back on menu"
menu
