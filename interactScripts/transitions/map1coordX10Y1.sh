#!/bin/bash

#transition map1 to map2

mapNum=2
unset -v up
down=map2coordX10Y20

clear
blankMap 20 bgWhite
placePlayer 10 19

. mapScripts/map2.sh
