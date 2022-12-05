#!/bin/bash

if [ $talkBend == 0 ]; then

textBox
printf "You approach a man standing"
textBoxLine2
printf "on a crate, trying to get the"
textBoxLine3
printf "attention of the passersby."
textBoxWait

textBox
printf "As you step up to him, he"
textBoxLine2
printf "seems genuinely shocked that"
textBoxLine3
printf "you did, and he clears his throat."
textBoxWait

textBox
printf "Bend: Welcome! Welcome to the"
textBoxLine2
printf "Larktown Rope Bending Emporium!"
textBoxLine3
printf "I'm Bend, Larktown's resident"
textBoxLine4
printf "rope bending expert!"
textBoxWait

textBox
printf "Bend: And yes! That IS my"
textBoxLine2
printf "real name! So don't ask!"
textBoxWait

textBox
printf "You: ... Okay..."
textBoxLine2
printf "So you... bend... rope?"
textBoxWait

textBox
printf "Bend: Yes! It is my one true"
textBoxLine2
printf "passion in life! And my mother"
textBoxLine3
printf "always told me to follow my heart!"
textBoxWait

textBox
printf "You: That's nice."
textBoxLine3
printf "Do you get many customers?"
textBoxWait

textBox
printf "Bend: Nope! You're the first!"
textBoxWait

textBox
printf "You: Oh..."
textBoxWait

fi

if [ $talkBend == 1 ]; then

textBox
printf "Hello, friend!"
textBoxLine2
printf "Do you have a rope for me?"
textBoxWait

fi

if [ $talkBend != 2 ] && [ `ls myInventory | grep "Rope" | wc -l` == 0 ]; then

textBox
printf "You: I don't have a rope."
textBoxWait

textBox
printf "Bend instantly deflates upon"
textBoxLine2
printf "Receiving this information."
textBoxWait

textBox
printf "Bend: Oh... right."
textBoxLine2
printf "Of course you don't. Maybe"
textBoxLine3
printf "Dad was right. Maybe I should"
textBoxLine4
printf "just get a real job..."
textBoxWait

textBox
printf "You: Uh..."
textBoxLine2
printf "No, you should stick with it,"
textBoxLine3
printf "I think..."
textBoxWait

textBox
printf "Bend: Huh..."
textBoxWait

textBox
printf "Bend: You're right!"
textBoxLine2
printf "I can't give up now!"
textBoxLine3
printf "I have dreams!"
textBoxLine4
printf "Dreams I intend to make true!"
textBoxWait

textBox
printf "Bend: Thanks, stranger."
textBoxLine2
printf "You're welcome here anytime."
textBoxWait

talkBend=1

elif [ $talkBend != 2 ] && [ `ls myInventory | grep "Rope" | wc -l` == 1 ]; then

textBox
printf "You: Well, I do have this rope."
textBoxLine2
printf "Here you go."
textBoxWait

textBox
printf "You hand over the rope to Bend,"
textBoxLine2
printf "and he hops off his crate with glee."
textBoxWait

textBox
printf "He stands there for a minute,"
textBoxLine2
printf "as if reminding himself of"
textBoxLine3
printf "what to do next."
textBoxWait

textBox
printf "You watch as Bend lifts up"
textBoxLine2
printf "his crate, searches under it"
textBoxLine3
printf "for a moment, and suddenly frowns."
textBoxWait

textBox
printf "Bend: I'm so sorry, it appears"
textBoxLine2
printf "I've misplaced my glasses."
textBoxLine3
printf "I won't be able to bend your rope."
textBoxWait

textBox
printf "Bend hands the rope back over"
textBoxLine2
printf "to you with disappointment in"
textBoxLine3
printf "his eyes."
textBoxWait

textBox
printf "You: Oh, okay then."
textBoxLine2
printf "I'll bring you some glasses"
textBoxLine3
printf "if I find any."
textBoxWait

talkBend=2
continue

fi

if [ $talkBend == 2 ]; then

textBox
printf "Bend: Hey! did you find any glasses?"
textBoxWait

if [ `ls myInventory | grep "Glasses" | wc -l` == 0 ]; then

textBox
printf "You: Um... no."
textBoxWait

textBox
printf "Bend: Oh..."
textBoxLine2
printf "Never mind then."
textBoxWait

elif [ `ls myInventory | grep "Glasses" | wc -l` == 1 ]; then

textBox
printf "You: I did. I bought them"
textBoxLine2
printf "from the shop over there."
textBoxWait

textBox
printf "You hand over the glasses."
textBoxWait

rm myInventory/Glasses

textBox
printf "Bend: Wow! They look a lot"
textBoxLine2
printf "like my glasses! What a coincidence!"
textBoxLine3
printf "Let me try them on!"
textBoxWait

textBox
printf "Bend: AAH! You uh..."
textBoxLine2
printf "You looked quite... different..."
textBoxLine3
printf "without my glasses."
textBoxLine4
printf "Anyways, I'll get to it."
textBoxWait

textBox
printf "You hand over your rope, and"
textBoxLine2
printf "Bend once again searches under"
textBoxLine3
printf "his crate, fishing out a large book."
textBoxWait

textBox
printf "You observe the man as he gently"
textBoxLine2
printf "places the glasses on his face and"
textBoxLine3
printf "flips through a few pages."
textBoxWait

textBox
printf "Bend: Ah! This should do!"
textBoxWait

textBox
printf "He gets to work, and after a few"
textBoxLine2
printf "minutes, he has finally completed"
textBoxLine3
printf "a (rather simple) knot."
textBoxWait

textBox
printf "Bend: Here you go! A lasso!"
textBoxLine2
printf "The perfect tool for the wild west!"
textBoxWait

rm myInventory/Rope
echo "A lasso made by a rather strange fellow." > myInventory/Lasso

textBox
printf "Lasso was added to inventory."
textBoxWait

textBox
printf "You: I uh... I'm not a cowboy."
textBoxLine2
printf "At least I don't think so..."
textBoxLine3
printf "I have no use for this."
textBoxWait

textBox
printf "Bend: Oh... I hadn't though of that."
textBoxLine2
printf "Well anyways, this transaction is"
textBoxLine3
printf "complete!"
textBoxWait

textBox
printf "Bend hands you a dollar."
textBoxWait

echo "A good ol' American dollar given by Bend." > myInventory/bendDollar
dollars=$(( $dollars + 1 ))

textBox
printf "bendDollar was added to inventory."
textBoxWait

textBox
printf "You're pretty sure Bend doesn't"
textBoxLine2
printf "understand how any of this is supposed"
textBoxLine3
printf "to work, but you don't want to ruin"
textBoxLine4
printf "mood, so you don't say anything."
textBoxWait

talkBend=3
continue

fi

fi

if [ $talkBend == 3 ]; then

textBox
printf "Bend: Hey there friend!"
textBoxLine2
printf "Thanks for being my first customer!"
textBoxWait

fi

