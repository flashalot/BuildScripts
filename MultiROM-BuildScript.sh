#!/bin/bash
# Build Script For MultiRom
#  
#  This script Runs All Needed Parts For MultiROM except the kernel
#
#  Created by Jalen Battle-Bryant (Flashalot)
clear
banner MultiRom BuildScript
echo "please enter your name."
read name
clear
echo "please enter your device name ex ville,m7,m8,bacon."
read devicename
clear
echo "Sup $name What Do You Want To Build To Day?";
PS3='choice Your Poison: '
options=("Clean OutPut" "Build Recovery" "Build Multirom Zip" "Build Multirom Uninstaller Zip" "lazyv1 Cleaning , Building Recovery , Multirom Zip ,Multirom Uninstaller Zip" "lazyv2 Building Recovery , Multirom Zip ,Multirom Uninstaller Zip" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Clean OutPut")
          echo "Cleaning Your Shit"
		make clean
	  echo "Get Your Shit Together Man Smh..."
		clear
	  echo "MultiRom Build Script
	1) Clean OutPut
	2) Build Recovery
	3) Build Multirom Zip
	4) Build Multirom Uninstaller Zip
	5) lazyv1 Cleaning , Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	6) lazyv2 Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	7) Quit"
            ;;
# Build Recovery
        "Build Recovery")
        echo "Building Recovery Get off my Back Jeez"
 		source build/envsetup.sh
		breakfast $devicename
		make recoveryimage -j6
	echo "Done!!!!"
		clear
	echo "MultiRom Build Script
	1) Clean OutPut
	2) Build Recovery
	3) Build Multirom Zip
	4) Build Multirom Uninstaller Zip
	5) lazyv1 Cleaning , Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	6) lazyv2 Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	7) Quit"
            ;;
# Build Multirom Zip
        "Build Multirom Zip")
            echo "Building Multirom Zip lets hope it works"
		source build/envsetup.sh
		breakfast $devicename
		make multirom_zip -j6
	echo "Done!!!!"
		clear
	  echo "MultiRom Build Script
	1) Clean OutPut
	2) Build Recovery
	3) Build Multirom Zip
	4) Build Multirom Uninstaller Zip
	5) lazyv1 Cleaning , Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	6) lazyv2 Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	7) Quit"
            ;;
# Build Multirom Uninstaller Zip
        "Build Multirom Uninstaller Zip")
            echo "Building Multirom Uninstaller Zip You Might Never Need This But What ever"
		source build/envsetup.sh
		breakfast $devicename
		make multirom_uninstaller -j6
	echo "Done!!!!"
		clear
	  echo "MultiRom Build Script
	1) Clean OutPut
	2) Build Recovery
	3) Build Multirom Zip
	4) Build Multirom Uninstaller Zip
	5) lazyv1 Cleaning , Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	6) lazyv2 Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	7) Quit"
            ;;
        "lazyv1 Cleaning , Building Recovery , Multirom Zip ,Multirom Uninstaller Zip")
            echo "Cleaning , Building Recovery , Multirom Zip ,Multirom Uninstaller Zip"
		echo "Makeing Me Your Slave And Shit ... Ass" 
		source build/envsetup.sh
		breakfast $devicename
		make clean
		make recoveryimage -j6
		make multirom_zip -j6
		make multirom_uninstaller -j6
	echo "Done!!!!"
		clear
	  echo "MultiRom Build Script
	1) Clean OutPut
	2) Build Recovery
	3) Build Multirom Zip
	4) Build Multirom Uninstaller Zip
	5) lazyv1 Cleaning , Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	6) lazyv2 Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	7) Quit"
            ;;
	"lazyv2 Building Recovery , Multirom Zip ,Multirom Uninstaller Zip")
            echo "Building Recovery , Multirom Zip ,Multirom Uninstaller Zip"
		echo "Makeing Me Your Slave And Shit ... Ass x2" 
		source build/envsetup.sh	
		breakfast $devicename	
		make recoveryimage -j6
		make multirom_zip -j6
		make multirom_uninstaller -j6
	echo "Done!!!!"
		clear
	  echo "MultiRom Build Script
	1) Clean OutPut
	2) Build Recovery
	3) Build Multirom Zip
	4) Build Multirom Uninstaller Zip
	5) lazyv1 Cleaning , Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	6) lazyv2 Building Recovery , Multirom Zip ,Multirom Uninstaller Zip
	7) Quit"
            ;;
        "Quit")
            break
            ;;
        *) echo Wrong option Dumbass Pick Something Real;;
    esac
done
clear



