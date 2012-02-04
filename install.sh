#! /bin/bash
green=$(tput setaf 2)
reset=$(tput setaf 7)
basedir=`pwd`

clear
echo -e "${green}==>${reset} Applying symlinks"

echo -n "."
ln -fs $basedir/gitconfig ~/.gitconfig 

echo -n "."
ln -fs $basedir/zshrc ~/.zshrc

echo ""
echo -e "${green}==>${reset} Done"
