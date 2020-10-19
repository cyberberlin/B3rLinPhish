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
echo -e "\e[1;31;42m  ___  ____ ___  __   _____  __\e[0m"
echo -e "\e[1;31;42m  / _ )|_  // _ \/ /  /  _/ |/ /\e[0m"
echo -e "\e[1;31;42m / _  |/_ </ , _/ /___/ //    / \e[0m"
echo -e "\e[1;31;42m/____/____/_/|_/____/___/_/|_/\e[0m"
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
