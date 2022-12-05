#!/bin/bash

if [ $shitCount == 0 ]
then

textBox
printf "You come across a load of manure."
textBoxLine2
printf "You do need this ring..."
textBoxWait

textBox
printf "You take a deep breath (which you"
textBoxLine2
printf "immediately regret) and dig through"
textBoxLine3
printf "the pile of cow feces."
textBoxWait

textBox
printf "Alas, there was no ring."
textBoxLine2
printf "Maybe it's in one of the other piles."
textBoxWait

shitCount=$(( $shitCount + 1 ))

elif [ $shitCount == 1 ] && [ $pileOne != 1 ]
then

textBox
printf "Another pile of crap. Oh boy."
textBoxLine2
printf "You don't really want to do it,"
textBoxLine3
printf "but you know what you have to do."
textBoxWait

textBox
printf "You stick your hand into the"
textBoxLine2
printf "disgusting, warm pile of mush."
textBoxWait

textBox
printf "And there is no ring to be found."
textBoxLine2
printf "What a waste of time."
textBoxWait

shitCount=$(( $shitCount + 1 ))

elif [ $shitCount == 2 ] && [ $pileOne != 1 ]
then

textBox
printf "Here we are. The last heap"
textBoxLine2
printf "of cow shit in this awful place."
textBoxLine3
printf "Here goes..."
textBoxWait

textBox
printf "You rummage through the filth"
textBoxLine2
printf "and to your surprise, you pull"
textBoxLine3
printf "out a shiny silver ring."
textBoxWait

echo "A silver ring found in fresh excrement." > myInventory/silverRing

textBox
printf "silverRing was added to inventory."
textBoxWait

shitCount=3

else

textBox
printf "You have already searched this pile."
textBoxWait

fi

pileOne=1
