#!/bin/bash

if [ $doorOne == 0 ]
then

textBox
printf "$friendName: Hey dude!"
textBoxLine2
printf "The Professor's evil mansion"
textBoxLine3
printf "is right ahead, but the entrance is blocked!"
textBoxWait

textBox
printf "You: Evil mansion?"
textBoxWait

textBox
printf "$friendName: Yeah, I heard that"
textBoxLine2
printf "the Professor lives in a huge house"
textBoxLine3
printf "where he cackles as he assigns"
textBoxLine4
printf "homework!"
textBoxWait

textBox
printf "$friendName: I mean, you have"
textBoxLine2
printf "to be evil to make your students"
textBoxLine3
printf "sit through classes that barely"
textBoxLine4
printf "get a point across, then..."
textBoxWait

textBox
printf "$friendName: ... give them hours"
textBoxLine2
printf "of homework, only for the students"
textBoxLine3
printf "to have to mostly teach themselves"
textBoxLine4
printf "while they're doing the homework!"
textBoxWait

textBox
printf "You: ..."
textBoxLine2
printf "You seem to be... passionate"
textBoxLine3
printf "about this."
textBoxWait

textBox
printf "You: If he's as bad as you say,"
textBoxLine2
printf "I guess I'll help."
textBoxWait

textBox
printf "$friendName: Alright! now the"
textBoxLine2
printf "main problem is that absurdly"
textBoxLine3
printf "large and menacing door."

textBox
printf "$friendName: It looks like you have"
textBoxLine2
printf "to put a ring into that slot..."
textBoxWait

textBox
printf "$friendName: But I don't have a ring!"
textBoxLine2
printf "This is so frustrating..."
textBoxLine3
printf "I'll sit here and think of a plan..."
textBoxWait


elif [ $doorOne == 1 ] && [ $doorTwo == 0 ]
then

textBox
printf "$friendName: Whoa! While I had my back"
textBoxLine2
printf "turned, the door opened!"
textBoxLine3
printf "Where did you go?"
textBoxWait

textBox
printf "You: Actually, I-"
textBoxWait

textBox
printf "$friendName: Anyways, it turns"
textBoxLine2
printf "out that there was a second door"
textBoxLine3
printf "behind that first door!"
textBoxWait

textBox
printf "$friendName: Maybe the key is"
textBoxLine2
printf "to just wait. I guess I'll"
textBoxLine3
printf "take a little nap then..."
textBoxWait


elif [ $doorTwo == 1 ]
then

textBox
printf "Friend: ZZZZZ..."
textBoxWait

textBox
printf "Friend ... zzz..."
textBoxLine2
printf "... stupid teacher..."
textBoxLine3
printf "... ZZZZZZZZZZZZ..."
textBoxWait

fi
