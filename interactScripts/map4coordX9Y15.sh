#!/bin/bash

textBox
printf "You look at the tree."
textBoxLine2
printf "What a nice tree."
textBoxLine3
printf "Just a tree though, time to move on."
textBoxWait

textBox
printf "Wait a minute! What's that?"
textBoxLine2
printf "It's a bird! And not just any bird,"
textBoxLine3
printf "it's a bird with a gun in its beak!"
textBoxWait

textBox
printf "Well that's certainly an unnusual"
textBoxLine2
printf "occurrence. Surely nothing else will-"
textBoxLine3
printf "hold on! The bird just dropped the gun!"
textBoxWait

textBox
printf "The gun landed on the highest branch"
textBoxLine2
printf "of the only tree around for miles!"
textBoxLine3
printf "You couldn't write this stuff!"
textBoxWait

textBox
printf "Well, maybe you could..."
textBoxWait

textBox
printf "Anyways, you'd need some kind of"
textBoxLine2
printf "device that would allow you to reach"
textBoxLine3
printf "things from far away to get that..."
textBoxWait

if [ `cat inventory | grep "Lasso" | wc -l` == 1 ]
then

textBox
printf "You pull the gun down"
textBoxWait

cat inventory | grep -v "Lasso" > inventory
echo Gun >> inventory

textBox
printf "The gun was added to your inventory."
textBoxWait

fi
