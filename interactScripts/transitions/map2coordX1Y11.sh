#!/bin/bash

#transition map2 to map3

mapNum=3
unset -v left
right=map3coordX20Y11

clear
blankMap 20 bgWhite
placePlayer 19 11

. ../mapScripts/map3.sh
