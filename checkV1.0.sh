
trap 'printf "\n";partial;exit 1' 2
banner() {
printf "Instagram user checker By IG:ZAID_HTML"
}



## INSTAGRAM

check_insta=$(curl -s -H "Accept-Language: en" "https://www.instagram.com/$username" -L | grep -o 'The link you followed may be broken'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Instagram: \e[0m"

if [[ $check_insta == *'1'* ]]; then
printf "\e[1;93m Not Available " $username
printf "https://www.instagram.com/%s\n" $username 
elif [[ $check_insta == *'0'* ]]; then
printf "\e[1;92mNot Available !\n"
fi
banner


