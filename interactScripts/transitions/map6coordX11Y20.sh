#!/bin/bash

#transition map6 to map7

mapNum=7
unset -v down
up=map7coordX11Y1

clear
blankMap 20 bgWhite
placePlayer 11 2

. ../mapScripts/map7.sh
