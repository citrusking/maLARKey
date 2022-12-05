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

rm myInventory/bendDollar myInventory/trashDollar myInventory/blindDollar
echo "Shovel from the shop in Larktown. Likely stolen." > myInventory/Shovel
shovelGot=1
dollars=0

textBox
printf "Shovel was added to inventory."
textBoxWait

placeBlock 6 2
map6coordX6Y2=""

fi
