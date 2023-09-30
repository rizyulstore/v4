#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################
clear
# Getting

sldomain=$(cat /root/nsdomain)
cdndomain=$(cat /root/awscdndomain)
slkey=$(cat /etc/slowdns/server.pub)
TIMES="10"
CHATID=$(cat /etc/id)
KEY=$(cat /etc/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"

clear


domen=`cat /etc/xray/domain`

portsshws=`cat ~/log-install.txt | grep -w "SSH Websocket" | cut -d: -f2 | awk '{print $1}'`
wsssl=`cat /root/log-install.txt | grep -w "SSH SSL Websocket" | cut -d: -f2 | awk '{print $1}'`
#     Create account 
        hijau="\e[1;32m"
        NC="\033m"
        #Color validation 
          hijau="\e[1;32m"
          cyan="\e[1;36m"
          kuning="\e[1;33m"
          ungu="\e[1;35m"
          putih="\e[1;37m"
          white="\e[1;37m"
          NC="\033[0m"
          # CREATE S S H 
green_background="\033[42;37m"
red_background="\033[41;37m"
clear

read -p "        Username : " Login
read -p "        Password : " Pass
read -p "        Expired  : " masaaktif

IP=$(curl -sS ifconfig.me);
ossl=`cat /root/log-install.txt | grep -w "OpenVPN" | cut -f2 -d: | awk '{print $6}'`
opensh=`cat /root/log-install.txt | grep -w "OpenSSH" | cut -f2 -d: | awk '{print $1}'`
db=`cat /root/log-install.txt | grep -w "Dropbear" | cut -f2 -d: | awk '{print $1,$2}'`
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"

OhpSSH=`cat /root/log-install.txt | grep -w "OHP SSH" | cut -d: -f2 | awk '{print $1}'`
OhpDB=`cat /root/log-install.txt | grep -w "OHP DBear" | cut -d: -f2 | awk '{print $1}'`
OhpOVPN=`cat /root/log-install.txt | grep -w "OHP OpenVPN" | cut -d: -f2 | awk '{print $1}'`

clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`
clear
TEXT="
<code>◇═══════════════════◇</code>
<code>  SSH Premium Account   </code>
<code>◇═══════════════════◇</code>
<code>Username        : </code> <code>$Login</code>
<code>Password        : </code> <code>$Pass</code>
<code>◇═══════════════════◇</code>
<code>IP               : </code> <code>$IP</code>
<code>HOST             : </code> <code>$domen</code>
<code>Port OpenSSH    : </code> <code>22</code>
<code>Port Dropbear    : </code> <code>109, 143</code>
<code>Port SSH WS     : </code> <code>80, 8080</code>
<code>Port SSH SSL WS : </code> <code>443</code>
<code>Port SSL/TLS     : </code> <code>8443,8880</code>
<code>BadVPN UDP       : </code> <code>7100, 7300, 7300</code>
<code>◇═══════════════════◇</code>
<code>SSH UDP VIRAL :</code> <code>$domen:1-65535@$Login:$Pass</code>
<code>◇═══════════════════◇</code>
<code>HTTP COSTUM :</code> <code>$domen:80@$Login:$Pass</code>
<code>Expired On   : $exp</code>
<code>Host Slowdns    : </code> <code>$sldomain</code>
<code>Port Slowdns     : </code> <code>80, 443, 53</code> 
<code>Pub Key          : </code> <code> $slkey</code>
<code>◇═══════════════════◇</code>
<code>Payload WS/WSS   : </code>
<code>GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: ws[crlf][crlf]</code>
<code>◇═══════════════════◇</code>
<code>Expired On   : $exp</code>
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null

echo -e ""
echo -e "Info SSH & OpenVPN"
echo -e "=============================="
echo -e "Username  : $Login"
echo -e "Password  : $Pass"
echo -e "Expired   : $exp"
echo -e "===========HOST-SSH==========="
echo -e "IP/Host   : $IP"
echo -e "Domain SSH: $domen"
echo -e "===========SLOWDNS==========="
echo -e "Domain Name System(DNS): 8.8.8.8"
echo -e "Name Server(NS): $sldomain"
echo -e "DNS PUBLIC KEY : $slkey"
echo -e "Domain SlowDNS : $sldomain"
echo -e "=========Service-Port========="
echo -e "SlowDNS: 443,22,109,143"
echo -e "OpenSSH: 22"
echo -e "Dropbear: 443, 109, 143"
echo -e "SSL/TLS: 443"
echo -e "SSH Websocket SSL/TLS: 443"
echo -e "SSH Websocket HTTP: 8880"
echo -e "BadVPN UDPGW: 7100,7200,7300"
echo -e "=============================="
echo -e "Payload WS/WSS"
echo -e "=============================="
echo -e "GET / HTTP/1.1[crlf]Host: [host][crlf]Connection: Upgrade[crlf]User-Agent: [ua][crlf]Upgrade: ws[crlf][crlf]"
echo -e "=============================="
read -n 1 -s -r -p "Press any key to back on menu"

menu
