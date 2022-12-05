#!/bin/bash

if [ $treeCheck == 0 ]; then

textBox
printf "You look at the tree."
textBoxLine2
printf "What a nice tree."
textBoxLine3
printf "Just a tree though, time to move on."
textBoxWait

textBox
printf "I told you, didn't I?"
textBoxLine2
printf "This is just a tree. Obviously."
textBoxWait

sleep 1

textBox
printf "Wait a minute! What's that?"
textBoxLine2
printf "It's a bird! And not just any bird,"
textBoxLine3
printf "it's a bird with a handgun"
textBoxLine4
printf "in its beak!"
textBoxWait

textBox
printf "Well that's certainly an unnusual"
textBoxLine2
printf "occurrence. Surely nothing else will-"
textBoxLine3
printf "hold on! The bird just dropped"
textBoxLine4
printf "the gun!"
textBoxWait

textBox
printf "The gun is freefalling through the"
textBoxLine2
printf "air! What in the world is going on"
textBoxLine3
printf "here?! I was sorely mistaken, this"
textBoxLine4
printf "tree is crazy! How?!"
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
printf "That was surely a sight to behold."
textBoxWait

textBox
printf "Anyways, you'd need some kind of"
textBoxLine2
printf "device that would allow you to reach"
textBoxLine3
printf "things from far away to get that..."
textBoxWait

treeCheck=1

elif [ $treeCheck == 1 ]; then

textBox
printf "There is a gun skewered on the"
textBoxLine2
printf "highest branch of this random tree."
textBoxLine3
printf "If only you had some way to"
textBoxLine4
printf "reach that gun from down here..."
textBoxWait

fi

if [ `ls myInventory | grep "Lasso" | wc -l` == 1 ]
then

textBox
printf "Wait a minute! You have that"
textBoxLine2
printf "lasso that was given to you by"
textBoxLine3
printf "Bend, the sole proprietor of the"
textBoxLine4
printf "Larktown Rope Bending Emporium!"
textBoxWait

textBox
printf "It's insane that this lasso"
textBoxLine2
printf "actually came in handy!"
textBoxWait

textBox
printf "It really is the perfect tool"
textBoxLine2
printf "for the wild west..."
textBoxWait

textBox
printf "Impressively, you pull the gun"
textBoxLine2
printf "down using the lasso on your"
textBoxLine3
printf "first try. What are the odds?"
textBoxWait

rm myInventory/Lasso
echo "A gun that inexplicably ended up in a tree" > myInventory/Gun

textBox
printf "Gun was added to inventory."
textBoxWait

treeCheck=2

fi

if [ $treeCheck == 2 ]; then

textBox
printf "This is the only tree around for miles,"
textBoxLine2
printf "but don't let that fool you, there must"
textBoxLine3
printf "be some kind of weird energy to it that"
textBoxLine4
printf "attracts the most improbable things."
textBoxWait

textBox
printf "You better get out of here before"
textBoxLine2
printf "something weird happens again and"
textBoxLine3
printf "you somehow get hurt."
textBoxWait

treeCheck=3

elif [ $treeCheck == 3 ]; then

textBox
printf "A snail is suddenly carried by"
textBoxLine2
printf "the wind and flies straight into"
textBoxLine3
printf "your forehead. Ouch."
textBoxWait

treeCheck=2

fi
