#!/bin/bash

#transition map6 to map7

mapNum=7
unset -v down
up=map7coordX10Y1

clear
blankMap 20 bgWhite
placePlayer 10 2

. ../mapScripts/map7.sh
