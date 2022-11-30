#!/bin/bash

if [ $doorOne == 0 ]
then

textBox
printf "Friend: Hey dude!"
textBoxLine2
printf "The Evil Professor's mansion"
textBoxLine3
printf "is right ahead, but the entrance is blocked!"
textBoxWait

textBox
printf "Friend: It looks like you have"
textBoxLine2
printf "to put a ring into that slot."
textBoxWait

textBox
printf "Friend: But I don't have a ring!"
textBoxLine2
printf "This is so frustrating..."
textBoxLine3
printf "I'll sit here and think of a plan..."
textBoxWait


elif [ $doorOne == 1 ] && [ $doorTwo == 0 ]
then

textBox
printf "Friend: Whoa! While I had my back"
textBoxLine2
printf "turned, the door opened!"
textBoxLine3
printf "Where did you go?"
textBoxWait

textBox
printf "You: Actually, I-"
textBoxWait

textBox
printf "Friend: Anyways, it turns"
textBoxLine2
printf "out that there was a second door"
textBoxLine3
printf "behind that first door!"
textBoxWait

textBox
printf "Friend: Maybe the key is"
textBoxLine2
printf "just waiting. I guess I'll"
textBoxLine3
printf "just take a little nap..."
textBoxWait


elif [ $doorTwo == 1 ]
then

textBox
printf "Friend: ZZZZZ..."
textBoxWait

textBox
printf "Friend ...zzz..."
textBoxLine2
printf "... stupid teacher..."
textBoxLine3
printf "... ZZZZZZZZZZZZ..."
textBoxWait

fi
