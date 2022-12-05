#!/bin/bash

textBox
printf "A giant door blocks the way. There"
textBoxLine2
printf "is no place for a key, but there"
textBoxLine3
printf "does seem to be a ring-shaped slot."
textBoxWait

if [ `ls myInventory | grep "silverRing" | wc -l` == 1 ]
then

textBox
printf "You place the silver ring into"
textBoxLine2
printf "the slot, and the door starts"
textBoxLine3
printf "to shake intensely."
textBoxWait

textBox
printf "The door starts sliding open"
textBoxLine2
printf "and before long, the path"
textBoxLine3
printf "is revealed."
textBoxWait

rm myInventory/silverRing
placeBlock 10 12
placeBlock 11 12
map8coordX10Y12=""
map8coordX11Y12=""

doorOne=1

elif [ `ls myInventory | grep "copperRing" | wc -l` == 1 ]
then

textBox
printf "You place the copper ring into"
textBoxLine2
printf "the slot, and the door starts"
textBoxLine3
printf "to shake intensely."
textBoxWait

textBox
printf "The door starts sliding open"
textBoxLine2
printf "and before long, the path"
textBoxLine3
printf "is revealed."
textBoxWait

rm myInventory/copperRing
placeBlock 10 12
placeBlock 11 12
map8coordX10Y12=""
map8coordX11Y12=""

doorOne=1


elif [ `ls myInventory | grep "goldenRing" | wc -l` == 1 ]
then

textBox
printf "You place the golden ring into"
textBoxLine2
printf "the slot, and the door starts"
textBoxLine3
printf "to shake intensely."
textBoxWait

textBox
printf "The door starts sliding open"
textBoxLine2
printf "and before long, the path"
textBoxLine3
printf "is revealed."
textBoxWait

rm myInventory/goldenRing
placeBlock 10 12
placeBlock 11 12
map8coordX10Y12=""
map8coordX11Y12=""

doorOne=1


elif [ $doorOne == 1 ]
then

placeBlock 10 12
placeBlock 11 12
map8coordX10Y12=""
map8coordX11Y12=""

fi
