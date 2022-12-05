#!/bin/bash

placeTransition 10 1
placeTransition 11 1

placeNPC 14 4

placeObject 6 8
placeObject 6 13
placeObject 6 18
placeObject 15 8
placeObject 15 13
placeObject 15 18

if [ $enterMapSeven == 0 ]; then

textBox
printf "You enter the Larktown Graveyard."
textBoxLine2
printf "Near the entrance is an old"
textBoxLine3
printf "gravedigger with a depressed"
textBoxLine4
printf "expression on his face."
textBoxWait

enterMapSeven=1

fi
