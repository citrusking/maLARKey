#!/bin/bash

#transition map3 to map4

mapNum=4
unset -v left
right=map4coordX20Y10

clear
blankMap 20 bgWhite
placePlayer 19 10

. mapScripts/map4.sh
