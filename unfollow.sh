#!/bin/bash
#!/bin/bash
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
                  Facebook Bot Tools
         ------------------------------------
"
}
oooooooooooooooooooooooooooooooooooooo00000000000000000000000000000000000000000000o0o0o0o0ogetid(){
	nako=$(curl -s "https://graph.facebook.com/me/subscribedto?limit=1&access_token=$1" -L)
	valid=$(echo $nako | grep -Po '(?<="id":)[^,]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{\|}\)//g')
	nama=$(echo $nako | grep -Po '(?<="name":)[^,]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{\|}\)//g')
}
oooooooooooooooooooooooooooooooooooooo00000000000000000000000000000000000000000000o0o0o0o0ounfollow(){
	oooooooooooooooooooooooooooooooooooooo00000000000000000000000000000000000000000000o0o0o0o0ogetid $1
	list=$(cat listna.txt | sort -R | head -1)
	yabuki=$(curl -s "https://graph.facebook.com/$valid/subscribers?method=delete&access_token=$1" -L)
	if [[ $nako =~ "name" ]]; then
		printf "SUKSES => UNFOLLOW => $nama \n"
	else
		printf "GAGAL => UNFOLLOW"
	fi
}
header
read -p "Masukan Token FB : " oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonakoooooooooooooooooooooooochannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonakoooooooooooooooooooooooochannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
read -p "Limit: " limit;
for (( i = 0; i < $limit; i++ )); do
	oooooooooooooooooooooooooooooooooooooo00000000000000000000000000000000000000000000o0o0o0o0ounfollow $oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonakoooooooooooooooooooooooochannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonakoooooooooooooooooooooooochannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn
done
