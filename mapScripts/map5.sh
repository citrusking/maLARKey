#!/bin/bash

placeTransition 10 20
placeTransition 11 20

placeWall 1 13
placeWall 2 13
placeWall 3 13
placeWall 4 13
placeWall 7 13
placeWall 8 13
placeWall 9 13
placeWall 10 13
placeWall 11 13
placeWall 12 13
placeWall 13 13
placeWall 14 13
placeWall 15 13
placeWall 16 13
placeWall 17 13
placeWall 18 13
placeWall 19 13
placeWall 20 13

placeObject 5 13
placeObject 6 13
if [ $ropeGet == 0 ]; then
placeObject 18 15
fi
placeObject 2 4
placeObject 14 9
placeObject 19 7

placeNPC 3 6
placeNPC 8 8
placeNPC 11 11
placeNPC 16 6
placeNPC 11 2
placeNPC 13 2
placeNPC 15 2
