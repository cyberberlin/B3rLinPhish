# Bash Script for Hide Phishing URL Created by KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo
echo
echo -e "\e[1;31;42m__/\\\\\\\\\\\\\_______/\\\\\\\\\\_________________/\\\__________________________________/\\\\\\\\\\\\\____/\\\_____________________________/\\\_________\e[0m"    
echo -e "\e[1;31;42m _\/\\\/////////\\\___/\\\///////\\\_______________\/\\\_________________________________\/\\\/////////\\\_\/\\\____________________________\/\\\_________\e[0m"       
echo -e "\e[1;31;42m  _\/\\\_______\/\\\__\///______/\\\________________\/\\\______________/\\\_______________\/\\\_______\/\\\_\/\\\__________/\\\______________\/\\\_________\e[0m"      
echo -e "\e[1;31;42m   _\/\\\\\\\\\\\\\\__________/\\\//____/\\/\\\\\\\__\/\\\_____________\///___/\\/\\\\\\___\/\\\\\\\\\\\\\/__\/\\\_________\///___/\\\\\\\\\\_\/\\\_________\e[0m"     
echo -e "\e[1;31;42m    _\/\\\/////////\\\________\////\\\__\/\\\/////\\\_\/\\\______________/\\\_\/\\\////\\\__\/\\\/////////____\/\\\\\\\\\\___/\\\_\/\\\//////__\/\\\\\\\\\\__\e[0m"    
echo -e "\e[1;31;42m     _\/\\\_______\/\\\___________\//\\\_\/\\\___\///__\/\\\_____________\/\\\_\/\\\__\//\\\_\/\\\_____________\/\\\/////\\\_\/\\\_\/\\\\\\\\\\_\/\\\/////\\\_\e[0m"   
echo -e "\e[1;31;42m      _\/\\\_______\/\\\__/\\\______/\\\__\/\\\_________\/\\\_____________\/\\\_\/\\\___\/\\\_\/\\\_____________\/\\\___\/\\\_\/\\\_\////////\\\_\/\\\___\/\\\_\e[0m"  
echo -e "\e[1;31;42m       _\/\\\\\\\\\\\\\/__\///\\\\\\\\\/___\/\\\_________\/\\\\\\\\\\\\\\\_\/\\\_\/\\\___\/\\\_\/\\\_____________\/\\\___\/\\\_\/\\\__/\\\\\\\\\\_\/\\\___\/\\\_\e[0m" 
echo -e "\e[1;31;42m        _\/////////////______\/////////_____\///__________\///////////////__\///__\///____\///__\///______________\///____\///__\///__\//////////__\///____\///__\e[0m"
echo
echo -e "\e[40;38;5;82m Tool By \e[30;48;5;82m ➳͜͡❂ঔৣ⃕͜x͠↭ᶜʸᵇᵉʳ ᵇᵉʳˡᶤᶰ↭❦✪͜͡࿐⁩ \e[0m"
echo -e "\e[30;48;5;82m    Copyright \e[40;38;5;82m   B3RLIN \e[0m"
echo
echo
echo -e "\e[1;31;42m ꙳ᡃ⃟⋆⃟ۣۜ➣ᡃ⃟ᡃᡃ⃟⃢  PHISHING URL CREATOR ᡃ⃟ ᡃ⃟ᡃ⃟ᡃᡃ⃟⃢ᡃ⃟⋆⃟ۣۜ➣꙳\e[0m"
echo
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo
echo -e "\e[1;31;42m ꙳ᡃ⃟⋆⃟ۣۜ➣ᡃ⃟ᡃᡃ⃟⃢  MASKING DOMAIN ᡃ⃟ ᡃ⃟ᡃ⃟ᡃᡃ⃟⃢ᡃ⃟⋆⃟ۣۜ➣꙳\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), ex https://google.com, http
://anything.org) :'
echo
read mask
url_checker $mask
echo
echo 'Type social engineering words:(like free-money, best-pubg-tricks)'
echo
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo
read words
echo
echo 'Generating B3rLinPhish Link...'
echo
echo 'Here is the B3rLinPhish URL..'
echo
final=$mask-$words@$shorter
echo $final
