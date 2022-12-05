#!/bin/bash

textBox
printf "You see a rope on the ground."
textBoxLine2
printf "Why not?"
textBoxWait

echo "A rope found outside the ranch" > myInventory/Rope
placeBlock 18 15
map5coordX18Y15=""

textBox
printf "Rope was added to inventory"
textBoxWait

ropeGet=1
