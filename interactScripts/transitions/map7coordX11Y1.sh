#!/bin/bash

#transition map7 to map6

mapNum=6
unset -v up
down=map6coordX11Y20

clear
blankMap 20 bgWhite
placePlayer 11 19

. ../mapScripts/map6.sh
