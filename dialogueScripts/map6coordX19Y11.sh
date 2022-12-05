#!/bin/bash

if [ $talkRepeat == 0 ]; then

textBox
printf "Townsman: Hey, don't just"
textBoxLine2
printf "talk to people once, dialogue"
textBoxLine3
printf "can change after talking to"
textBoxLine4
printf "someone!"
textBoxWait

talkRepeat=1

elif [ $talkRepeat == 1 ]; then

textBox
printf "Townsman: Hey, don't just"
textBoxLine2
printf "talk to people once, dialogue"
textBoxLine3
printf "can change after talking to"
textBoxLine4
printf "someone!"
textBoxWait

sleep 1

textBox
printf "Townsman: Haha, gotcha."
textBoxWait

talkRepeat=2

elif [ $talkRepeat == 2 ]; then

textBox
printf "Townsman: Seriously though,"
textBoxLine2
printf "somebody put a lot of love and"
textBoxLine3
printf "care into making this world!"
textBoxWait

fi
