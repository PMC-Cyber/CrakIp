#!/bin/bash

__version__="1.0"


## ANSI colors (FG & BG)
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

## Check Internet Status
check_status() {
    echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Internet Status : "
    timeout 3s curl -fIs "https://api.github.com" > /dev/null
    [ $? -eq 0 ] && echo -e "${GREEN}Online${WHITE}" || echo -e "${RED}Offline${WHITE}"
}
##about banner
aboutbanner() {
   clear
  banner
  printf "\e[0m\n"
		echo "${GREEN} Author   ${RED}:  ${ORANGE}./B7 ${RED}[ ${ORANGE}PMC MALWARE TEAM ${RED}]"
		echo "${GREEN} Github   ${RED}:  ${CYAN}https://github.com/Unlimitid-Crak-You"
		echo "${GREEN} Social   ${RED}:  ${CYAN}https://instagram.com/aprizal_febrian"
		echo "${GREEN} Version  ${RED}:  ${ORANGE}${__version__}"
	
printf "\e[0m\n"
		echo "${WHITE} ${REDBG}Warning:${RESETBG}"
		echo "${CYAN}  This Tool is made for educational purpose"
		  echo "only ${RED}!${WHITE}${CYAN} Author will not be responsible for"
		  echo "any misuse of this toolkit ${RED}!${WHITE}"
}
## Script termination
exit_on_signal_SIGINT() {
    { printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Interrupted." 2>&1; reset_color; }
    exit 0
}

exit_on_signal_SIGTERM() {
    { printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Terminated." 2>&1; reset_color; }
    exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

## Reset terminal colors
reset_color() {
    tput sgr0   # reset attributes
    tput op     # reset color
    return
}


## Exit message
msg_exit() {
    { clear; banner1; echo; }
    echo -e "${GREENBG}${BLACK} Thank you for using this tool. Have a good day.${RESETBG}\n"
    { reset_color; exit 0; }
}

## Banner 1
banner1() {
printf "╔╦╗ ╦┈╦ ╔═╗ ╔╗╔ ╦╔═ ╔═╗ ┈ ╦┈╦ ╔═╗ ╦┈╦  \e[0m\n"
printf "┈║┈ ╠═╣ ╠═╣ ║║║ ╠╩╗ ╚═╗ ┈ ╚╦╝ ║┈║ ║┈║  \e[0m\n"
printf "┈╩┈ ╩┈╩ ╩┈╩ ╝╚╝ ╩┈╩ ╚═╝ ┈ ┈╩┈ ╚═╝ ╚═╝  \e[0m\n"

}

banner() {
  clear
check_status
printf "\e[0m\n"
printf "\e[1;33m   ╦ ╔═╗   ╦ ╦ ╔═╗ ╦ ╔╦╗  \e[0m\e[1;32m  ╦═╗ ╔═╗ ╦╔═    ∆   ∆ \e[0m\n"
printf "\e[1;33m   ║ ╠═╝   ╠═╣ ╠═╣ ║  ║   \e[0m\e[1;32m  ╠╦╝ ╠═╣ ╠╩╗      • \e[0m\n"
printf "\e[1;33m   ╩ ╩     ╩ ╩ ╩ ╩ ╩  ╩   \e[0m\e[1;32m  ╩╚═ ╩┈╩ ╩┈╩   \e[0m\n"
printf "\e[0m\e[1;32m   ┳ ┳ ┏━┓ ┳   ┏━┓ ┏━┓ ┏┳┓ ┏━┓   ┏┳┓ ┏━┓   ┳ ┳ ┏━┓ ┳ ┳   \e[0m\n"
printf "\e[0m\e[1;32m   ┃┃┃ ┣┫  ┃   ┃  ┃┃    ┃┃┃ ┣┫     ┃  ┃ ┃   ┗┳┛ ┃ ┃ ┃ ┃   \e[0m\n"
printf "\e[0m\e[1;32m   ┗┻┛ ┗━┛ ┻━┛ ┗━┛ ┗━┛ ┻ ┻ ┗━┛    ┻  ┗━┛    ┻  ┗━┛ ┗━┛   \e[0m\n"
printf "\e[1;32m                            In Code \e[0m\e[1;33mBash  \e[0m\e[1;31mVersion : ${__version__}    \e[0m\n"
printf "\e[0m\n"
printf "   \e[0m\e[1;37m┌─────────────────────────────────────────┐ \e[0m\n"
printf "\e[0m\e[1;33m   \e[0m\e[1;37m│  \e[0m\e[1;33mCreated By ./B7 \e[0m\e[1;31m(\e[0m\e[1;33m PMC MALWARE CYBER \e[0m\e[1;31m)  \e[0m\e[1;37m│  \e[0m\n"
printf "   └─────────────────────────────────────────┘"
printf "\e[0m\n"
}

menu() {
printf "\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m01\e[0m\e[1;31m]\e[0m\e[1;33m My IP\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m02\e[0m\e[1;31m]\e[0m\e[1;33m Track Ip\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m03\e[0m\e[1;31m]\e[0m\e[1;33m Update\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m99\e[0m\e[1;31m]\e[0m\e[1;33m About\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m00\e[0m\e[1;31m]\e[0m\e[1;33m Exit\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m[\e[0m\e[1;37m~\e[0m\e[1;31m]\e[0m\e[1;92m Select An Option \e[0m\e[1;96m: \e[0m\e[1;93m\en' option

if [[ $option == 1 || $option == 01 ]]; then
myipaddr
elif [[ $option == 2 || $option == 02 ]]; then
useripaddr
elif [[ $option == 2 || $option == 03 ]]; then
update
elif [[ $option == 2 || $option == 99 ]]; then
about
elif [[ $option == 0 || $option == 00 ]]; then
sleep 1
printf "\e[0m\n"
printf "\e[0m\n"
msg_exit

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}
myipaddr() {

myipaddripapico=$(curl -s "https://ipapi.co//json" -L)
myipaddripapicom=$(curl -s "http://ip-api.com/json/" -L)
myip=$(echo $myipaddripapico | grep -Po '(?<="ip":)[^,]*' | tr -d '[]"')
mycity=$(echo $myipaddripapico | grep -Po '(?<="city":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
myregion=$(echo $myipaddripapico | grep -Po '(?<="region":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
mycountry=$(echo $myipaddripapico | grep -Po '(?<="country_name":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
mylat=$(echo $myipaddripapicom | grep -Po '(?<="lat":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
mylon=$(echo $myipaddripapicom | grep -Po '(?<="lon":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
mytime=$(echo $myipaddripapicom | grep -Po '(?<="timezone":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
mypostal=$(echo $myipaddripapicom | grep -Po '(?<="zip":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
myisp=$(echo $myipaddripapico | grep -Po '(?<="org":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
myasn=$(echo $myipaddripapico | grep -Po '(?<="asn":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
mycountrycode=$(echo $myipaddripapico | grep -Po '(?<="country_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
mycurrency=$(echo $myipaddripapico | grep -Po '(?<="currency":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
mylanguage=$(echo $myipaddripapico | grep -Po '(?<="languages":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
mycalling=$(echo $myipaddripapico | grep -Po '(?<="country_calling_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

banner
printf "\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  Ip Address    \e[0m\e[1;96m:\e[0m\e[1;92m   $myip\e[0m\n"
printf "  \e[0m\e[1;93m  City          \e[0m\e[1;96m:\e[0m\e[1;92m   $mycity\e[0m\n"
printf "  \e[0m\e[1;93m  Region        \e[0m\e[1;96m:\e[0m\e[1;92m   $myregion\e[0m\n"
printf "  \e[0m\e[1;93m  Country       \e[0m\e[1;96m:\e[0m\e[1;92m   $mycountry\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  Latitude      \e[0m\e[1;96m:\e[0m\e[1;92m    $mylat\e[0m\n"
printf "  \e[0m\e[1;93m  Longitude     \e[0m\e[1;96m:\e[0m\e[1;92m    $mylon\e[0m\n"
printf "  \e[0m\e[1;93m  Time Zone     \e[0m\e[1;96m:\e[0m\e[1;92m    $mytime\e[0m\n"
printf "  \e[0m\e[1;93m  Postal Code   \e[0m\e[1;96m:\e[0m\e[1;92m    $mypostal\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  ISP           \e[0m\e[1;96m:\e[0m\e[1;92m   $myisp\e[0m\n"
printf "  \e[0m\e[1;93m  ASN           \e[0m\e[1;96m:\e[0m\e[1;92m   $myasn\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  Country Code  \e[0m\e[1;96m:\e[0m\e[1;92m   $mycountrycode\e[0m\n"
printf "  \e[0m\e[1;93m  Currency      \e[0m\e[1;96m:\e[0m\e[1;92m   $mycurrency\e[0m\n"
printf "  \e[0m\e[1;93m  Languages     \e[0m\e[1;96m:\e[0m\e[1;92m   $mylanguage\e[0m\n"
printf "  \e[0m\e[1;93m  Calling Code  \e[0m\e[1;96m:\e[0m\e[1;92m   $mycalling\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  GOOGLE Maps   \e[0m\e[1;96m:\e[0m\e[1;94m  https://maps.google.com/?q=$mylat,$mylon\e[0m\n"
sleep 5
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' mainorexit1

if [[ $mainorexit1 == 1 || $mainorexit1 == 01 ]]; then
banner
menu
elif [[ $mainorexit1 == 2 || $mainorexit1 == 02 ]]; then
printf "\e[0m\n"
printf "\e[0m\n"
msg_exit

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

update() {
clear
printf "\e[0m\n"
sleep 1
printf "\e[1;31mFollow me one github\e[0m" 
 echo 
 echo -e "\E[1;33m:::::::::::::: \e[97m  PMC MALWARE CYBER  \E[1;33m:::::::::::::::"
printf "\e[0m\n"
printf "\e[97m╦╔═ ╔═╗ ╔╗╔ ╔═╗ ╦ ╦═╗ ╔╦╗ ╔═╗ ╔═╗ ╦  \e[0m\n"
printf "\e[97m╠╩╗ ║ ║ ║║║ ╠╣  ║ ╠╦╝ ║║║ ╠═╣ ╚═╗ ║  \e[0m\n"
printf "\e[97m╩ ╩ ╚═╝ ╝╚╝ ╚   ╩ ╩╚═ ╩ ╩ ╩ ╩  ═╝ ╩  \e[0m\n"
printf "\e[0m\n"
printf " \e[0m\e[1;93mAPAKAH ANDA AKAN MENGUPDATE SCRIPT INI \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m NO\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m YES\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' mainorexit2

if [[ $mainorexit2 == 1 || $mainorexit2 == 01 ]]; then
banner
menu
elif [[ $mainorexit2 == 2 || $mainorexit2 == 02 ]]; then
clear
printf "\e[0m\n"
printf "\e[97m╦ ╦ ╔═╗ ╔╦╗ ╔═╗ ╔╦╗ ╔═╗  \e[0m\n"
printf "\e[97m║ ║ ╠═╝  ║║ ╠═╣  ║  ║╣\e[0m\n"
printf "\e[97m╚═╝ ╩   ═╩╝ ╩ ╩  ╩  ╚═╝ \e[0m\n"
cd $HOME 
cd
rm -rf CrakIp
git clone https://github.com/Unlimited-Crack-You/CrakIp.git 
cd CrakIp
sleep 1
clear
echo ""
printf " \e[0m\e[1;93mUPDATE SELESAI AKAN MENCOBA MASUK KEMBALI \e[0m\e[1;91m!! \e[0m\n"
printf "\e[0m\n"
sleep 2
bash Ip-Hait-Crak.sh
 clear

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

about() {
  aboutbanner
		  printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[0m\n"
		read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' about

if [[ $mainorexit1 == 1 || $about == 01 ]]; then
banner
menu
elif [[ $mainorexit1 == 2 || $about == 02 ]]; then
printf "\e[0m\n"
printf "\e[0m\n"
exit 1
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

useripaddr() {

banner
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m[\e[0m\e[1;37m~\e[0m\e[1;31m]\e[0m\e[1;92m Input IP Address \e[0m\e[1;96m: \e[0m\e[1;93m\en' useripaddress

ipaddripapico=$(curl -s "https://ipapi.co/$useripaddress/json" -L)
ipaddripapicom=$(curl -s "http://ip-api.com/json/$useripaddress" -L)
userip=$(echo $ipaddripapico | grep -Po '(?<="ip":)[^,]*' | tr -d '[]"')
usercity=$(echo $ipaddripapico | grep -Po '(?<="city":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
useregion=$(echo $ipaddripapico | grep -Po '(?<="region":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
usercountry=$(echo $ipaddripapico | grep -Po '(?<="country_name":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userlat=$(echo $ipaddripapicom | grep -Po '(?<="lat":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userlon=$(echo $ipaddripapicom | grep -Po '(?<="lon":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
usertime=$(echo $ipaddripapicom | grep -Po '(?<="timezone":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userpostal=$(echo $ipaddripapicom | grep -Po '(?<="zip":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userisp=$(echo $ipaddripapico | grep -Po '(?<="org":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userasn=$(echo $ipaddripapico | grep -Po '(?<="asn":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
usercountrycode=$(echo $ipaddripapico | grep -Po '(?<="country_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
usercurrency=$(echo $ipaddripapico | grep -Po '(?<="currency":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
userlanguage=$(echo $ipaddripapico | grep -Po '(?<="languages":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
usercalling=$(echo $ipaddripapico | grep -Po '(?<="country_calling_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

banner
printf "\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  Ip Address    \e[0m\e[1;96m:\e[0m\e[1;92m   $userip\e[0m\n"
printf "  \e[0m\e[1;93m  City          \e[0m\e[1;96m:\e[0m\e[1;92m   $usercity\e[0m\n"
printf "  \e[0m\e[1;93m  Region        \e[0m\e[1;96m:\e[0m\e[1;92m   $useregion\e[0m\n"
printf "  \e[0m\e[1;93m  Country       \e[0m\e[1;96m:\e[0m\e[1;92m   $usercountry\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  Latitude      \e[0m\e[1;96m:\e[0m\e[1;92m    $userlat\e[0m\n"
printf "  \e[0m\e[1;93m  Longitude     \e[0m\e[1;96m:\e[0m\e[1;92m    $userlon\e[0m\n"
printf "  \e[0m\e[1;93m  Time Zone     \e[0m\e[1;96m:\e[0m\e[1;92m    $usertime\e[0m\n"
printf "  \e[0m\e[1;93m  Postal Code   \e[0m\e[1;96m:\e[0m\e[1;92m    $userpostal\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  ISP           \e[0m\e[1;96m:\e[0m\e[1;92m   $userisp\e[0m\n"
printf "  \e[0m\e[1;93m  ASN           \e[0m\e[1;96m:\e[0m\e[1;92m   $userasn\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  Country Code  \e[0m\e[1;96m:\e[0m\e[1;92m   $usercountrycode\e[0m\n"
printf "  \e[0m\e[1;93m  Currency      \e[0m\e[1;96m:\e[0m\e[1;92m   $usercurrency\e[0m\n"
printf "  \e[0m\e[1;93m  Languages     \e[0m\e[1;96m:\e[0m\e[1;92m   $userlanguage\e[0m\n"
printf "  \e[0m\e[1;93m  Calling Code  \e[0m\e[1;96m:\e[0m\e[1;92m   $usercalling\e[0m\n"
printf "\e[0m\n"
printf "  \e[0m\e[1;93m  GOOGLE Maps   \e[0m\e[1;96m:\e[0m\e[1;94m  https://maps.google.com/?q=$userlat,$userlon\e[0m\n"
sleep 5
printf "\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"
printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' mainorexit2

if [[ $mainorexit2 == 1 || $mainorexit2 == 01 ]]; then
banner
menu
elif [[ $mainorexit2 == 2 || $mainorexit2 == 02 ]]; then
printf "\e[0m\n"
printf "\e[0m\n"
msg_exit

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

banner
menu
