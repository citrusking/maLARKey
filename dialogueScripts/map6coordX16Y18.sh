#!/bin/bash

textBox
printf "I'm an unfinished NPC!"
textBoxWait

if [ $dollars != 3 ]
then

textBox
printf "Here's a dollar!"
textBoxWait

echo Dollar >> inventory
dollars=$(( $dollars + 1 ))

textBox
printf "Dollar was added to your inventory."
textBoxWait

else

textBox
printf "You were already given three dollars!"
textBoxWait

fi
