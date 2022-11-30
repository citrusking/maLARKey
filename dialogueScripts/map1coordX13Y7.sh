#!/bin/bash

#start area friend

if [ `cat inventory | grep "Gate Key" | wc -l` == 0 ]
then

textBox
printf "Friend: Here's the key to that gate."
textBoxWait

echo "Gate Key" >> inventory

textBox
printf "Gate Key added to inventory"
textBoxWait

else

textBox
printf "Friend: I already gave you the key."
textBoxWait

fi
