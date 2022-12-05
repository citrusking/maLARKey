#!/bin/bash

#transition map3 to map2

mapNum=2
unset -v right
left=map2coordX1Y11

clear
blankMap 20 bgWhite
placePlayer 2 11

. ../mapScripts/map2.sh
