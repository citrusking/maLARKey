#!/bin/bash

#transition map3 to map5

mapNum=5
unset -v up
down=map5coordX10Y20

clear
blankMap 20 bgWhite
placePlayer 10 19

. ../mapScripts/map5.sh
