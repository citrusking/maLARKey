#!/bin/bash

#transition map8 to map9

mapNum=9
unset -v up
down=map9coordX11Y20

clear
blankMap 20 bgWhite
placePlayer 11 19

. mapScripts/map9.sh

textBox
printf "You Win!"
textBoxLine2
printf "At least this Alpha version..."
textBoxWait

textBox
printf "So uhh, yeah..."
textBoxLine2
printf "Thanks for playtesting!"
textBoxLine3
printf "Just press Q to quit the game."
textBoxWait

