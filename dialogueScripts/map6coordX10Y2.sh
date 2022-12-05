#!/bin/bash

if [ $talkBlind == 0 ]; then

textBox
printf "You say something to the lady"
textBoxLine2
printf "but she just smiles at you."
textBoxLine3
printf "Maybe she isn't all there."
textBoxWait

elif [ $talkBlind == 1 ] && [ $talkDeaf == 0 ]; then

textBox
printf "You: Hello, I have a message for you."
textBoxWait

textBox
printf "The lady responds with a smile and"
textBoxLine2
printf "a nod. Clearly she doesn't understand."
textBoxWait

textBox
printf "You: Hello? I was sent here to give"
textBoxLine2
printf "you a message. I just talked to your"
textBoxLine3
printf "neighbor, he-"
textBoxWait

textBox
printf "The lady now seems a bit distraught,"
textBoxLine2
printf "and decides to give you a card."
textBoxWait

cp ../.card.txt myInventory/card.txt

textBox
printf "card.txt was added to inventory."
textBoxWait

mkdir ladyInventory
talkDeaf=1

fi

if [ $talkDeaf == 1 ] && [ `ls ladyInventory | grep "letter.txt" | wc -l` == 0 ]; then

textBox
printf "The strange lady gave you a card."
textBoxLine2
printf "Perhaps you should read that"
textBoxLine3
printf "using a certain Linux command."
textBoxWait

elif [ $talkDeaf == 1 ] && [ `ls ladyInventory | grep "letter.txt" | wc -l` == 1 ] && [ `cat ladyInventory/letter.txt | grep "man next door says hi" | wc -l` == 0 ]; then

textBox
printf "The deaf lady doesn't seem to"
textBoxLine2
printf "understand your letter."
textBoxLine3
printf "Perhaps you did not send the"
textBoxLine4
printf "correct message."
textBoxWait

elif [ $talkDeaf == 1 ] && [ `ls ladyInventory | grep "letter.txt" | wc -l` == 1 ] && [ `cat ladyInventory/letter.txt | grep "man next door says hi" | wc -l` != 0 ]; then

textBox
printf "The deaf lady seems delighted"
textBoxLine2
printf "after she reads the letter, and"
textBoxLine3
printf "starts writing some letters of"
textBoxLine4
printf "her own."
textBoxWait

textBox
printf "She finishes writing both letters,"
textBoxLine2
printf "and she seals one in an envelope."
textBoxLine3
printf "Finally, she hands them both to"
textBoxLine4
printf "you with a smile."
textBoxWait

cp ../.letter2.txt myInventory/letter2.txt
echo "A sealed envelope given to you by the deaf lady." > myInventory/Envelope

textBox
printf "letter2.txt and Envelope were"
textBoxLine2
printf "added to inventory."
textBoxWait

mkdir manInventory

talkDeaf=2

fi

if [ $talkDeaf == 2 ]; then

textBox
printf "The deaf lady smiles in"
textBoxLine2
printf "anticipation, waiting for the"
textBoxLine3
printf "blind man to read her letter."
textBoxWait

fi
