#!/bin/bash

. funcFile.sh #import the functions

stty -echo

#SPACE FOR START MENU STUFF

#game initialization
playerName="Player Name"
ropeGet=0
dollars=0
pileOne=0
pileTwo=0
pileThree=0
shitCount=0
talkShop=0
talkGrave=0
glassesGot=0
shovelGot=0
copperGot=0
graveDug=0
doorOne=0
doorTwo=0

echo "" > inventory

invisible

#stty -echo

blankMap 20 bgWhite
placePlayer 10 16


mapNum=1
. mapScripts/map1.sh

#stty echo

#SPACE FOR INITIAL DIALOGUE SCRIPT

while [ 1 == 1 ]; do

tput cup $frameHeight
tput ed

read -t 0.1 -n 1000 discard
readInput

tput cup $frameHeight
tput ed

done

stty echo
