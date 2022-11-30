#!/bin/bash

textBox
printf "You see a rope on the ground."
textBoxLine2
printf "Why not?"
textBoxWait

echo Rope >> inventory
placeBlock 18 15
map5coordX18Y15=""

textBox
printf "Rope was added to your inventory"
textBoxWait

ropeGet=1
