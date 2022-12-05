#!/bin/bash

placeWall 8 1
placeWall 8 2
placeWall 8 3
placeWall 8 4
placeWall 8 5
placeWall 8 6
placeWall 9 6
placeWall 10 6
placeWall 12 6
placeWall 13 6
placeWall 14 6
placeWall 15 6
placeWall 16 6
placeWall 18 6
placeWall 19 6
placeWall 20 6
placeWall 20 5
placeWall 20 4
placeWall 20 3
placeWall 20 2
placeWall 20 1
placeWall 14 5
placeWall 14 4
placeWall 14 3
placeWall 14 2
placeWall 14 1

if [ $glassesGot == 0 ]; then
placeObject 2 2
fi

if [ $shovelGot == 0 ]; then
placeObject 6 2
fi

placeTransition 1 10
placeTransition 1 11
placeTransition 10 20
placeTransition 11 20

placeNPC 4 4
placeNPC 5 15
placeNPC 16 18
placeNPC 19 11

if [ $talkBlind != 2 ]; then
placeNPC 10 2

else
map6coordX10Y2=""
placeNPC 18 4

fi

placeNPC 18 2


if [ $enterMapSix == 0 ]; then

textBox
printf "The path leads to a small,"
textBoxLine2
printf "bustling town with plenty of"
textBoxLine3
printf "townsfolk commuting to and from work."
textBoxWait

textBox
printf "In the immediate vicinity, there"
textBoxLine2
printf "seems to be a bustler standing on"
textBoxLine3
printf "a small wooden crate, two houses,"
textBoxLine4
printf "and a small shop beside them."
textBoxWait

enterMapSix=1

fi
