#!/bin/bash

#transition map8 to map2

mapNum=2
unset -v down
up=map2coordX11Y1

clear
blankMap 20 bgWhite
placePlayer 11 2

. mapScripts/map2.sh
