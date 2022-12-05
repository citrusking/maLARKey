#!/bin/bash

textBox
printf "The deaf lady smiles at you once"
textBoxLine2
printf "she sees your face."
textBoxWait

if [ $talkDeaf == 2 ]; then

textBox
printf "She hands you another letter."
textBoxWait

cp ../.letter3.txt myInventory/letter3.txt

textBox
printf "letter3.txt added to inventory."
textBoxWait

talkdDeaf=3

fi
