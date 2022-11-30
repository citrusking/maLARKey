#!/bin/bash

#transition map2 to map3

mapNum=3
unset -v left
right=map3coordX20Y10

clear
blankMap 20 bgWhite
placePlayer 19 10

. mapScripts/map3.sh
