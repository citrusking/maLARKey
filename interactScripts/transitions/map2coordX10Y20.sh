#!/bin/bash

#transition map2 to map1

mapNum=1
unset -v down
up=map1coordX10Y1

clear
blankMap 20 bgWhite
placePlayer 10 2

. mapScripts/map1.sh
