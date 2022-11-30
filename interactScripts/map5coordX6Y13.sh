#!/bin/bash

textBox
printf "This fence's gate is shut tight"
textBoxLine2
printf "with an old rusty lock."
textBoxWait

textBox
printf "Even if there is still a key,"
textBoxLine2
printf "you are doubtful it would work."
textBoxWait

if [ `cat inventory | grep "Gun" | wc -l` == 1 ]
then

textBox
printf "Luckily, you have a gun, like"
textBoxLine2
printf "any true American obviously would."
textBoxWait

textBox
printf "You shoot the lock, eviscerating"
textBoxLine2
printf "the hunk of decayed metal. That lock"
textBoxLine3
printf "surely regrets crossing your path."
textBoxWait

placeBlock 5 13
placeBlock 6 13

map5coordX5Y13=""
map5coordX6Y13=""

shitCount=0

fi
