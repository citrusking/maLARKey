#!/bin/bash

placeTransition 10 1
placeTransition 11 1
placeTransition 20 10
placeTransition 20 11
placeTransition 10 20
placeTransition 11 20
placeTransition 1 10
placeTransition 1 11

placeObject 13 8

if [ $enterMapTwo == 0 ]; then

textBox
printf "The path leads to a crossroads."
textBoxLine2
printf "The only thing here is a signpost."
textBoxWait

enterMapTwo=1

fi
