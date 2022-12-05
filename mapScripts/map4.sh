#!/bin/bash

placeTransition 20 10
placeTransition 20 11

placeObject 9 15

if [ $enterMapFour == 0 ]; then

textBox
printf "The path leads to a sprawling"
textBoxLine2
printf "forest the likes of which you've"
textBoxLine3
printf "never seen. A dense wood is-"
textBoxWait

textBox
printf "No, wait."
textBoxWait

textBox
printf "There's only one tree here."
textBoxLine2
printf "Well, that's boring."
textBoxWait

textBox
printf "Surely there's nothing going on"
textBoxLine2
printf "with that one random tree in this"
textBoxLine3
printf "barren field, but if you want to"
textBoxLine4
printf "check it out, go ahead, I guess."
textBoxWait

enterMapFour=1

fi
