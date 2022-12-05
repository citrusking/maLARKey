#!/bin/bash

if [ $talkShop != 1 ]
then

textBox
printf "These glasses belong to the shopkeep."
textBoxLine2
printf "You should talk to them first."
textBoxWait

else

textBox
printf "You pick up the glasses, and wonder"
textBoxLine2
printf "to yourself how this guy has never"
textBoxLine3
printf "seen or heard of glasses before."
textBoxWait

echo "Glasses from the shop in Larktown." > myInventory/Glasses
glassesGot=1

textBox
printf "Glasses were added to inventory."
textBoxWait

placeBlock 2 2
map6coordX2Y2=""

fi
