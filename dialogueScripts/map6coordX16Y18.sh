#!/bin/bash

if [ $talkTrash == 0 ]; then

textBox
printf "Townsman: Hey! You there! Throw"
textBoxLine2
printf "this away for me, will ya?"
textBoxWait

textBox
printf "You: What?"
textBoxWait

textBox
printf "Townsman: What, are ya hard of"
textBoxLine2
printf "hearing or somethin'? I said"
textBoxLine3
printf "throw this away for me, okay?"
textBoxWait

echo "Some random guy's trash?" > myInventory/Trash

textBox
printf "Trash was added to inventory"
textBoxWait

textBox
printf "This was not the first time you"
textBoxLine2
printf "thought that somebody had mistaken"
textBoxLine3
printf "you for somebody else today."
textBoxWait

textBox
printf "But... you seemed to be wrong"
textBoxLine2
printf "Last time, so maybe you should"
textBoxLine3
printf "Go along with this."
textBoxWait

textBox
printf "You: Um... how do I throw this"
textBoxLine2
printf "away, sir?"
textBoxWait

textBox
printf "Townsman: First day on the job?"
textBoxLine2
printf "Alright, alright, I'll explain."
textBoxWait

textBox
printf "Townsman: Now, to \"throw something"
textBoxLine2
printf "away\", you need to use the rm"
textBoxLine3
printf "command."
textBoxWait

talkTrash=1

fi

if [ $talkTrash == 1 ]; then

textBox
printf "Townsman: The rm command is a Linux"
textBoxLine2
printf "command that removes a file, and it's"
textBoxLine3
printf "used by typing 'rm' followed by the"
textBoxLine4
printf "location of the file."
textBox

textBox
printf "Townsman: Try it out!"
textBoxWait

fi

if [ $talkTrash == 2 ]; then

textBox
printf "Townsman: There you go!"
textBoxLine2
printf "Here's your pay for the week,"
textBoxLine3
printf "go get yourself something nice."
textBoxWait

echo "A good ol' American dollar given by a trashy guy." > myInventory/trashDollar
dollars=$(( $dollars + 1 ))

textBox
printf "trashDollar was added to inventory."
textBoxWait

talkTrash=3

fi

if [ $talkTrash == 3 ]; then

textBox
printf "Townsman: Hey! While you're standin'"
textBoxLine2
printf "there, how 'bout I teach ya something"
textBoxLine3
printf "else?"
textBoxWait

textBox
printf "Townsman: If you ever need to throw"
textBoxLine2
printf "away a whole directory, make sure you"
textBoxLine3
printf "use the rmdir or rm -r commands."
textBoxWait

textBox
printf "Townsman: They both use the same"
textBoxLine2
printf "syntax, but you use rmdir on an empty"
textBoxLine3
printf "directory, while you use rm -r to"
textBoxLine4
printf "throw away everything inside too."
textBoxWait

fi
