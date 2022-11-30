#!/bin/bash

#transition map3 to map4

mapNum=4
unset -v left
right=map4coordX20Y11

clear
blankMap 20 bgWhite
placePlayer 19 11

. mapScripts/map4.sh
