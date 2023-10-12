#!/bin/bash
ipsaya=$(curl -sS ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/rizyulstore/permission/main/ipmini"
checking_sc() {
    useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
    if [[ $date_list < $useexp ]]; then
        echo -ne
    else
        echo -e "\033[1;36m┌─────────────────────────────────────────────────┐\033[0m"
        echo -e "\033[1;36m \033[0m ${COLBG1}          ${WH}• AUTOSCRIPT PREMIUM •               \033[0m \033[1;36m $NC"
        echo -e "\033[1;36m└─────────────────────────────────────────────────┘\033[0m"
        echo -e "\033[1;36m┌─────────────────────────────────────────────────┐\033[0m"
        echo -e "            ${RED}PERMISSION DENIED !\033[0m"
        echo -e "   \033[0;33mYour VPS\033[0m $ipsaya \033[0;33mHas been Banned\033[0m"
        echo -e "     \033[0;33mBuy access permissions for scripts\033[0m"
        echo -e "             \033[0;33mContact Your Admin \033[0m"
        echo -e "     \033[0;36mTelegram\033[0m: https://t.me/Rizyul04"
        echo -e "\033[1;36m└─────────────────────────────────────────────────┘\033[0m"
        exit
    fi
}
checking_sc
Name=$(curl -sS https://raw.githubusercontent.com/rizyulstore/permission/main/ipmini | grep $ipsaya | awk '{print $2}')
# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2

if [[ -e /usr/bin/bot ]]; then
echo -ne
else
wget -O /usr/bin/bot https://raw.githubusercontent.com/rizyulstore/v4/main/bot.sh && chmod +x /usr/bin/bot
fi
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
# // Exporting Language to UTF-8
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
clear

# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


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
export RED_BG="\e[45m"

# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${green}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${green}ON${NC}"
else
resst="${red}OFF${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
function addhost(){
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -rp "Domain/Host: " -e host
echo ""
if [ -z $host ]; then
echo "????"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
setting-menu
else
echo "IP=$host" > /var/lib/scrz-prem/ipvps.conf
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "Dont forget to renew cert"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
}
function genssl(){
clear
systemctl stop nginx
domain=$(cat /var/lib/scrz-prem/ipvps.conf | cut -d'=' -f2)
Cek=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
if [[ ! -z "$Cek" ]]; then
sleep 1
echo -e "[ ${red}WARNING${NC} ] Detected port 80 used by $Cek " 
systemctl stop $Cek
sleep 2
echo -e "[ ${green}INFO${NC} ] Processing to stop $Cek " 
sleep 1
fi
echo -e "[ ${green}INFO${NC} ] Starting renew cert... " 
sleep 2
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
echo -e "[ ${green}INFO${NC} ] Renew cert done... " 
sleep 2
echo -e "[ ${green}INFO${NC} ] Starting service $Cek " 
sleep 2
echo $domain > /etc/xray/domain
systemctl restart xray
systemctl restart nginx
echo -e "[ ${green}INFO${NC} ] All finished... " 
sleep 0.5
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
export sem=$( curl -s https://raw.githubusercontent.com/artanodrop/permission/main/versions)
#export pak=$( cat /home/.ver)
IPVPS=$(curl -s ipinfo.io/ip )
ISP=$(curl -s ipinfo.io/org?token=ce3da57536810d | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city?token=ce3da57536810d )
#WKT=$(curl -s ipinfo.io/timezone?token=ce3da57536810d )
clear
echo -e ""
echo -e ""
echo -e "${BIWhite}  ───────────────────────────────────────────────────── ${NC}"
echo -e "${NC} ${RED_BG}                ${BIWhite}✙ RIZYULTUNNEL ✙               ${RED_BG}   ${NC}"
echo -e "${BIWhite}  ───────────────────────────────────────────────────── ${NC}"
echo -e "${BIWhite} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BIWhite} │                    ${BIWhite}${UWhite}INFORMATIONS${NC}"
echo -e "${BIWhite} │====================================================="
echo -e " ${BIWhite}│  ${BIWhite}Use Core        :  ${BIYellow}XRAY${NC}"
echo -e " ${BIWhite}│  ${BIWhite}Current Domain  :  ${BIYellow}$(cat /etc/xray/domain)${NC}"
echo -e " ${BIWhite}│  ${BIWhite}IP-VPS          :  ${BIYellow}$IPVPS${NC}"
echo -e " ${BIWhite}│  ${BIWhite}CITY            :  ${BIYellow}$CITY${NC}"
echo -e " ${BIWhite}│  ${BIWhite}ISP             :  ${BIYellow}$ISP${NC}"
echo -e " ${BIWhite}└─────────────────────────────────────────────────────┘${NC}"
echo -e "     ${BIWhite} SSH ${NC}: $ressh"" ${BIWhite} NGINX ${NC}: $resngx"" ${BIWhite}  XRAY ${NC}: $resv2r"" ${BIWhite} TROJAN ${NC}: $resv2r"
echo -e "   ${BIWhite}     STUNNEL ${NC}: $resst" "${BIWhite} DROPBEAR ${NC}: $resdbr" "${BIWhite} SSH-WS ${NC}: $ressshws"
echo -e "${BIWhite} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BIWhite} │                      OTHER MENU                     │ ${NC}" 
echo -e "${BIWhite} │=====================================================│"
echo -e "${BIWhite} │${NC}${BIWhite} [•1]${NC} ${white} SSH${NC}          " "${BIWhite}[•7]${NC} ${white} CHECK RUNNING${NC}"
echo -e "${BIWhite} │${NC}${BIWhite} [•2]${NC} ${white} VMESS${NC}        " "${BIWhite}[•8]${NC} ${white} RESTR SERVICE${NC}"           
echo -e "${BIWhite} │${NC}${BIWhite} [•3]${NC} ${white} VLESS${NC}        " "${BIWhite}[•9]${NC} ${white} BACKUP MENU${NC}  "                   
echo -e "${BIWhite} │${NC}${BIWhite} [•4]${NC} ${white} TROJAN-GO${NC}    " "${BIWhite}[10]${NC} ${white} INSTALL BOT VPS${NC} "                 
echo -e "${BIWhite} │${NC}${BIWhite} [•5]${NC} ${white} TROJAN-WS${NC}    " "${BIWhite}[11]${NC} ${white} MENU SETINGS${NC} " 
echo -e "${BIWhite} │${NC}${BIWhite} [•6]${NC} ${white} Update Menu${NC}  " "${BIWhite}[12]${NC} ${white} SETTING BOT${NC} "   
echo -e "${BIWhite} └─────────────────────────────────────────────────────┘${NC}" 
echo -e "${BIWhite} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BIWhite} │  \033[0m ${BOLD}${GREEN}XXX${BIYellow} SSH${GREEN}  XXX  ${BIYellow}VMESS  ${GREEN}XXX  ${BIYellow}VLESS  ${GREEN}XXX  ${BIYellow}TROJAN${GREEN} XXX $NC "
echo -e "${BIWhite} │  \033[0m ${Blue}     $ssh1         $vma           $vla           $tra              $NC"
echo -e "${BIWhite} └─────────────────────────────────────────────────────┘${NC}"
echo -e "${BIWhite} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BIWhite} │$NC ${BIWhite}HARI ini${NC}: ${red}$ttoday$NC ${BIWhite}KEMARIN${NC}: ${red}$tyest$NC ${BIWhite}BULAN${NC}: ${red}$tmon$NC $NC"
echo -e "${BIWhite} └─────────────────────────────────────────────────────┘${NC}"
echo -e " ${BIWhite}┌─────────────────────────────────────────────────────┐${NC}"
echo -e " ${BIWhite}│  Version      ${NC} : 3.1 Last Update"
echo -e " ${BIWhite}│  User       ${NC}   : $Name \e[0m"
echo -e " ${BIWhite}│  Expiry script${NC} : ${BIYellow}$useexp${NC} Days"
echo -e " ${BIWhite}└─────────────────────────────────────────────────────┘${NC}"
echo
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menu-sshh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trgo ;;
5) clear ; menu-trojan ;;
6) clear ; rm -rf /root/updatefile.sh && wget https://raw.githubusercontent.com/rizyulstore/v4/main/updatefile.sh && chmod +x updatefile.sh && ./updatefile.sh ;;
7) clear ; status ;;
8) clear ; restarts ;;
9) clear ; menu-backup ;;
10) clear ; wget https://raw.githubusercontent.com/rizyulstore/v4/main/install-bot.sh && chmod +x install-bot.sh && ./install-bot.sh ;;
11) clear ; menu-set ;;
12) clear ; bot ;;
00) clear ; menu ;;
x) exit ;;
*) echo -e "" ; echo "Press any key to back exit" ; sleep 1 ; exit ;;
esac
