#!/bin/bash

placeWall 1 12
placeWall 2 12
placeWall 3 12
placeWall 4 12
placeWall 5 12
placeWall 6 12
placeWall 7 12
placeWall 8 12
placeWall 9 12
placeWall 12 12
placeWall 13 12
placeWall 14 12
placeWall 15 12
placeWall 16 12
placeWall 17 12
placeWall 18 12
placeWall 19 12
placeWall 20 12
placeWall 9 11
placeWall 9 10
placeWall 9 9
placeWall 12 11
placeWall 12 10
placeWall 12 9
placeWall 1 9
placeWall 2 9
placeWall 3 9
placeWall 4 9
placeWall 5 9
placeWall 6 9
placeWall 7 9
placeWall 8 9
placeWall 13 9
placeWall 14 9
placeWall 15 9
placeWall 16 9
placeWall 17 9
placeWall 18 9
placeWall 19 9
placeWall 20 9

if [ $doorOne == 0 ]; then
placeObject 10 12
placeObject 11 12
fi

if [ $doorTwo == 0 ]; then
placeObject 10 9
placeObject 11 9
fi

placeNPC 14 15

placeTransition 10 1
placeTransition 11 1
placeTransition 10 20
placeTransition 11 20
