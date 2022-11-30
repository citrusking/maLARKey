#!/bin/bash

#transition map8 to map2

mapNum=2
unset -v down
up=map2coordX10Y1

clear
blankMap 20 bgWhite
placePlayer 10 2

. mapScripts/map2.sh
