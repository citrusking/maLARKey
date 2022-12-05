#!/bin/bash

#transition map6 to map2

mapNum=2
unset -v left
right=map2coordX20Y10

clear
blankMap 20 bgWhite
placePlayer 19 10

. ../mapScripts/map2.sh
