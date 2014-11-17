#!/bin/bash
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
clear
echo $bg"Please Enter recovery Name."$stock
echo $bg"Curent files in directery "$stock
echo $bg"Pick Your Recovery img name DO NOT INCLUDE THE .IMG OR THE SCRIPT WILL FAIL!!!!"$stock
ls *img
read rname
echo $bb "Backing Files .."$stock
sleep 3
if [ -d "Backup/" ]; then
	echo $br "Backup folder already there"$stock
echo -e
else
	echo $bm "Makeing Backup Folder..."$stock
mkdir Backup/
mkdir Backup/Recovery/
fi
cp $rname.img Backup/Recovery/ 
echo $bb "Converting now "$stock
sleep 3
tar -H ustar -c $rname.img > recovery.tar
md5sum -t recovery.tar >> recovery.tar 
mv recovery.tar recovery.tar.md5
echo $br "Convert Done .."$stock
echo -e
echo $bb "Moving To OutPut Folder .."$stock
echo $bb "Checking If OutPut Folder Is There Already.."$stock
if [ -d "OutPut/" ]; then
	echo $br "OutPut folder already there!"$stock
echo -e
else
	echo $bm "Makeing OutPut Folder..."$stock
echo -e
mkdir OutPut/
fi
mv *.tar.md5 OutPut/
echo -e 
echo $bb "Moving Done .."$stock
echo -e 
echo $br "D"$stock$by"o"$stock$bg"n"$stock$bb"e"$stock!!!!!!!
echo $bb "Check Out Folder For Finished Tar  .."$stock
echo -e 
sleep 5

