#!/bin/bash

#transition map7 to map6

mapNum=6
unset -v up
down=map6coordX10Y20

clear
blankMap 20 bgWhite
placePlayer 10 19

. ../mapScripts/map6.sh
