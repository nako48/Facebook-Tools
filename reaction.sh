#!/bin/bash
# TYPE BOT = HAHA,LOVE,SAD,WOW,LIKE,ANGRY
# CODE BY = NakoCoders X Tatsumi-Crew
# Please Not Recoder Kalau Cuman Ganti Text Goblog !
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m' 
PUR='\033[0;35m'
GRN="\e[32m"
WHI="\e[37m"
NC='\033[0m'
header(){
printf "${GRN}
         ####################################
         ####################################
         #######                      #######
         #######                      #######${YELLOW}
         ####### Powered By NakoCoder #######
         ###############      ###############
         ###############      ###############
         ###############      ###############
         ###############      ###############${RED}
         #######    ####      ####    #######
         #######    ####      ####    #######
         #######    ##############    #######
         #######    ##############    #######
         #######                      #######
         ####################################
         ####################################${NC}
         ------------------------------------
                Facebook Bot Reactions
         ------------------------------------
"
}
getid(){
	nako=$(curl -s "https://graph.facebook.com/v2.1/me/home?fields=id,from,type,message&limit=1&access_token=$1" -L)
	valid=$(echo $nako | grep -Po '(?<="id":)[^,]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{\|}\)//g' | head -1)
	nama=$(echo $nako | grep -Po '(?<="name":)[^,]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{\|}\)//g')
	message=$(echo $nako | grep -Po '(?<="message":)[^,]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{\|}\)//g')
}
proses(){
	getid $1
	yabuki=$(curl -s "https://graph.facebook.com/v2.11/$valid/reactions?type=$typebot&access_token=$1&method=post" -H 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31' -L)
	result=$(echo $yabuki | grep -Po '(?<="success":)[^,]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{\|}\)//g' )
	if [[ $result =~ "true" ]]; then
		printf "${GRN}SUKSES => LIKE FROM ($nama)${NC}\n"
	else
		printf "${RED}GAGAL => LIKE${NC}\n"
	fi
}
header
read -p "Masukan Token FB : " token
read -p "Masukan TYPE BOT : " typebot
read -p "Limit: " limit;
for (( i = 0; i < $limit; i++ )); do
	proses $token $typebot
done
wait