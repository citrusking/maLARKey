#!/bin/bash

#transition map2 to map8

mapNum=8
unset -v up
down=map8coordX11Y20

clear
blankMap 20 bgWhite
placePlayer 11 19

. mapScripts/map8.sh
