#!/bin/bash

#transition map2 to map6

mapNum=6
unset -v right
left=map6coordX1Y10

clear
blankMap 20 bgWhite
placePlayer 2 10

. ../mapScripts/map6.sh
