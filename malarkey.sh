#!/bin/bash

#define functions and variables
. funcFile.sh

if [ `tput lines` -lt 40 ]; then
stty lines 40
fi

if [ `tput cols` -lt 75 ]; then
stty cols 75
fi

seed=$(( $RANDOM % 3 + 1 ))
playerName="Player Name"
friendName="???"

friendTalk=0
tutorialEcho=0
ropeGet=0
treeCheck=0
talkKid=0
pileOne=0
pileTwo=0
pileThree=0
shitCount=0
gunGiven=0
talkShop=0
talkBlind=0
talkDeaf=0
talkBend=0
talkTrash=0
talkRepeat=0
talkGrave=0
dollars=0
glassesGot=0
shovelGot=0
copperGot=0
graveDug=0
doorOne=0
doorTwo=0

enterMapOne=0
enterMapTwo=0
enterMapThree=0
enterMapFour=0
enterMapFive=0
enterMapSix=0
enterMapSeven=0
enterMapEight=0
enterMapNine=0


#START MENU STUFF

invisible
clear
printTitle
echo
read -s -p "Press enter to start:" titlePrompt
clear

read -n 10 -p "Please enter your name (max. 10 chars.): " playerName
clear

bgMagenta; printf "  "; bgBlack; printf " - Purple\n";
bgLRed; printf "  "; bgBlack; printf " - Red\n";
bgGreen; printf "  "; bgBlack; printf " - Green\n";
echo "Please select a color for your character:"
select playerColor in Purple Red Green
do
echo "Selected color: $playerColor"
sleep 1
break
done

case $playerColor in
Purple)
	playerColor=bgMagenta
	;;
Red)
	playerColor=bgLRed
	;;
Green)
	playerColor=bgGreen
	;;
esac

stty -echo
invisible

#INTRO SEQUENCE

. ./mapScripts/map0.sh

#game initialization

cd LarkWorld

mkdir myInventory


blankMap 20 bgWhite
placePlayer 10 16

mapNum=1
. ../mapScripts/map1.sh

#SPACE FOR INITIAL DIALOGUE SCRIPT

while true; do

read -t 0.01 -n 1000 discard #stores all buffered inputs into a junk variable
readInput

done
