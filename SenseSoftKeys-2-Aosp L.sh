#!/bin/bash
#######################################################################
# Auto Convert Sense SoftKeys To Aosp L
#
#  Created by Jalen Battle-Bryant (Flashalot)
#######################################################################
clear
#######################################################################
#Colors
#Reg Colors
r=$(tput setaf 1)             #  red
g=$(tput setaf 2)             #  green
y=$(tput setaf 3)             #  yellow
b=$(tput setaf 4)             #  blue
m=$(tput setaf 5)             #  Magenta
c=$(tput setaf 6)             #  cyan
#Bold
b=$(tput bold)                #  Bold
#Bold Colors
br=${b}$(tput setaf 1)        #  red
bg=${b}$(tput setaf 2)        #  green
by=${b}$(tput setaf 3)        #  yellow
bb=${b}$(tput setaf 4)        #  blue
bm=${b}$(tput setaf 5)        #  Magenta
bc=${b}$(tput setaf 6)        #  cyan
#Text Mode's
ul=$(tput smul )              #  underline mode
rev=$(tput rev)               #  Turn on reverse mode
#Stock color
stock=$(tput sgr0)            #  Reset
#######################################################################
rm navigation_icon_back.png
rm navigation_icon_recent_apps.png
sleep 1
echo $bb "Unziping Sense Zip "$stock
unzip -j -n *.zip \*png
echo $br "Unziping Done .."$stock
#######################################################################
echo $bb "Converting now "$stock
cp navigation_icon_back.png CSKeys/SystemUI/res/drawable-sw600dp-xxhdpi-v13/ic_sysbar_back.png
cp navigation_icon_back.png CSKeys/SystemUI/res/drawable-sw600dp-xxhdpi-v13/ic_sysbar_back_land.png
#
cp navigation_icon_down.png CSKeys/SystemUI/res/drawable-sw600dp-xxhdpi-v13/ic_sysbar_back_ime.png
#
cp navigation_icon_home.png CSKeys/SystemUI/res/drawable-sw600dp-xxhdpi-v13/ic_sysbar_home_land.png
cp navigation_icon_home.png CSKeys/SystemUI/res/drawable-sw600dp-xxhdpi-v13/ic_sysbar_home.png
#
cp navigation_icon_recent_apps.png CSKeys/SystemUI/res/drawable-sw600dp-xxhdpi-v13/ic_sysbar_recent.png
cp navigation_icon_recent_apps.png CSKeys/SystemUI/res/drawable-sw600dp-xxhdpi-v13/ic_sysbar_recent_land.png
#
cp CSKeys/SystemUI/res/drawable-sw600dp-xxhdpi-v13/*.png CSKeys/SystemUI/res/drawable-xxhdpi-v4/
#######################################################################
echo $br "Convert Done .."$stock
echo -e
echo $bb "Moving To OutPut Folder .."$stock
echo $bb "Checking If OutPut Folder Is There Already.."$stock
if [ -d "CSKeys/" ]; then
	echo $br "OutPut folder already there!"$stock
echo -e
else
	echo $bm "Makeing OutPut Folder..."$stock
echo -e
mkdir CSKeys/
fi
#
zip -r NewZip.zip CSKeys/*
