#!/bin/bash

#transition map6 to map2

mapNum=2
unset -v left
right=map2coordX20Y11

clear
blankMap 20 bgWhite
placePlayer 19 11

. ../mapScripts/map2.sh
