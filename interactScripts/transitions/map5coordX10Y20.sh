#!/bin/bash

#transition map5 to map3

mapNum=3
unset -v down
up=map3coordX10Y1

clear
blankMap 20 bgWhite
placePlayer 10 2

. ../mapScripts/map3.sh
