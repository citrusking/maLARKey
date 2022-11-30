#!/bin/bash

if [ $dollars != 3 ]
then

textBox
printf "You do not have enough money"
textBoxLine2
printf "to buy this shovel."
textBoxWait

else

textBox
printf "You hand the money over to"
textBoxLine2
printf "the shopkeep. He snickers as"
textBoxLine3
printf "he hands over the old shovel."
textBoxWait

cat inventory | grep -v "Dollar" > inventory
echo Shovel >> inventory
shovelGot=1
dollars=0

textBox
printf "Shovel was added to your inventory."
textBoxWait

placeBlock 6 2
map6coordX6Y2=""

fi
