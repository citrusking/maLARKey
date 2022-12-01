#!/bin/bash

#define functions and variables
. funcFile.sh

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


#SPACE FOR START MENU STUFF

#game initialization

stty -echo #turns off display of keyboard input

echo "" > inventory

invisible

blankMap 20 bgWhite
placePlayer 10 16

mapNum=1
. mapScripts/map1.sh

#SPACE FOR INITIAL DIALOGUE SCRIPT

while true; do

read -t 0.01 -n 1000 discard #stores all buffered inputs into a junk variable
readInput

done
