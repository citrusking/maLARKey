#!/bin/bash

if [ $talkShop == 0 ]
then

textBox
printf "Shopkeep: Hey there!"
textBoxLine2
printf "Welcome to my humble and"
textBoxLine3
printf "entirely legal shop!"
textBoxWait

textBox
printf "You: Why do you have to"
textBoxLine2
printf "clarify that your shop is legal?"
textBoxWait

textBox
printf "Shopkeep: Oh, y'know..."
textBoxLine2
printf "Just in case you heard some silly"
textBoxLine3
printf "rumors about how I obtain my items..."
textBoxWait

textBox
printf "Shopkeep: Heh... heh..."
textBoxWait

textBox
printf "You: Uh, alright whatever..."
textBoxLine2
printf "What do you have?"
textBoxWait

textBox
printf "Shopkeep: I'm so glad you asked!"
textBoxLine2
printf "Over here on the right I have a shovel"
textBoxLine3
printf "for the low price of three dollars!"
textBoxWait

textBox
printf "You: THREE DOLLARS?"
textBoxLine2
printf "That is so much money!"
textBoxLine3
printf "Why would a shovel cost that much?"
textBoxWait

textBox
printf "Shopkeep: Shut up! That's the price!"
textBoxLine2
printf "If you don't like it you can go look"
textBoxLine3
printf "somewhere else!"
textBoxWait

textBox
printf "Shopkeep: Besides, the guy I sto-"
textBoxLine2
printf "I mean, a guy I saw that lost a shovel"
textBoxLine3
printf "once was really sad about losing it."
textBoxWait

textBox
printf "You: ..."
textBoxLine2
printf "Alright..."
textBoxLine3
printf "What's that on the left?"
textBoxWait

textBox
printf "Shopkeep: Oh, that?"
textBoxLine2
printf "I dunno, that's just some weird piece"
textBoxLine3
printf "of junk with circular glass in it."
textBoxWait

textBox
printf "Shopkeep: You can just take that."
textBoxLine2
printf "It hurts my eyes when I put"
textBoxLine3
printf "it on anyways."
textBoxWait

talkShop=1

elif [ $talkShop == 1 ] && [ $shovelGot == 0 ]
then

textBox
printf "Shopkeep: Once you have three"
textBoxLine2
printf "dollars, just interact with the"
textBoxLine3
printf "shovel and I'll get it for you."
textBoxWait

elif [ $talkShop == 1 ] && [ $shovelGot == 1 ]
then

textBox
printf "Shopkeep: I'm rich!"
textBoxLine2
printf "Thanks for the money, chump!"
textBoxWait

textBox
printf "Shopkeep: Yet..."
textBoxLine2
printf "I can't help but feel empty."
textBoxWait

textBox
printf "Shopkeep: I've sacrificed"
textBoxLine2
printf "my own pride, and for what? Money?"
textBoxWait

textBox
printf "Shopkeep: Perhaps life isn't about"
textBoxLine2
printf "vanity and monetary gain..."
textBoxLine3
printf "I'm... I'm so alone..."
textBoxWait

fi
