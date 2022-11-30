#!/bin/bash

textBox
printf "Hey! I can turn rope into"
textBoxLine2
printf "a lasso!"
textBoxWait

if [ `cat inventory | grep "Rope" | wc -l` == 1 ]
then

textBox
printf "Here you go!"
textBoxWait

cat inventory | grep -v "Rope" > inventory
echo Lasso >> inventory

textBox
printf "Lasso was added to your inventory."
textBoxWait

else

textBox
printf "You don't have a rope..."
textBoxWait

fi
