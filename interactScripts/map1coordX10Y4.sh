#!/bin/bash

#start area gate

if [ `cat inventory | grep "Gate Key" | wc -l` == 1 ]
then

#this block removes the gate spaces
bgBlack
placeBlock 10 4
placeBlock 11 4

#this block removes the content of the variables
map1coordX10Y4=""
map1coordX11Y4=""

else

textBox
printf "A fence with a gate blocks your path."
textBoxLine2
printf "If only you had a key..."
textBoxWait

fi
