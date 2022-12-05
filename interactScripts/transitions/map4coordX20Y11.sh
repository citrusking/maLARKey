#!/bin/bash

#transition map4 to map3

mapNum=3
unset -v right
left=map3coordX1Y11

clear
blankMap 20 bgWhite
placePlayer 2 11

. ../mapScripts/map3.sh
