#!/bin/bash

. funcFile.sh

. map1.sh

playerX=5
playerY=1

clear
printMap

while [ 1 == 1 ]
do
readInput
clear
if [ $playerY == 9 ] && [ "$currentMap" == "map1" ]; then
playerX=5
playerY=1
. map2.sh
fi
printMap
done
