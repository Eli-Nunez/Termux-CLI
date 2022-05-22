#!/bin/bash
# ZSH Custom Installer

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#Alias
zshrc="https://pastebin.com/raw/bCeuBVzs"
p10krc="https://pastebin.com/raw/y6DmEft1"
p10kgit="https://github.com/romkatv/powerlevel10k.git"

# Codigo
clear
echo -e "$purpleColour[$endColour$greenColour*$endColour$purpleColour]$endColour$blueColour Instalando Paquetes$endColour$grayColour...$endColour"
apt update > /dev/null 2>&1 && apt upgrade -y > /dev/null 2>&1 && apt install lsd zsh git wget bat fzf -y > /dev/null 2>&1
clear
echo -e "$purpleColour[$endColour$greenColour*$endColour$purpleColour]$endColour$blueColour Paquetes instalados Correctamente$endColour$grayColour...$endColour"
echo -e "\n$purpleColour[$endColour$greenColour*$endColour$purpleColour]$endColour$blueColour Descargando Ficheros y Configuración$endColour$endColour$grayColour...$endColour"
 git clone --depth=1 $p10kgit ~/powerlevel10k > /dev/null 2>&1
mv ./.zshrc ~
mv ./.p10k.zsh ~
echo -e "\n$purpleColour[$endColour$greenColour*$endColour$purpleColour]$endColour$blueColour Instalando Terminal$endColour$greenColour...$endColour"
chsh -s zsh
clear
echo -e "$purpleColour[$endColour$greenColour*$endColour$purpleColour]$endColour$blueColour Ultimos Retoques$endColour$grayColour...$endColour"
apt update > /dev/null 2>&1 && apt upgrade -y > /dev/null 2>&1
clear
echo -e "$purpleColour[$endColour$greenColour*$endColour$purpleColour]$endColour$blueColour Instalacion Completada$endColour$grayColour!$endColour"
echo -e "$purpleColour[$endColour$greenColour*$endColour$purpleColour]$endColour$blueColour Reinicia la terminal$endColour$grayColour.$endColour"
