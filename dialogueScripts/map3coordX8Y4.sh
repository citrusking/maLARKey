#!/bin/bash

#kid on map3

if [ $talkKid == 0 ]; then

textBox
printf "Kid: Hey you! To the"
textBoxLine2
printf "north there's a ranch."
textBoxLine3
printf "Help me get in there!"
textBoxWait

textBox
printf "You: No, why should I?"
textBoxWait

textBox
printf "Kid: Uhh... I saw one"
textBoxLine2
printf "of the cows eat a ring."
textBoxLine3
printf "Maybe you want that?"
textBoxWait

textBox
printf "You: Why do you even want"
textBoxLine2
printf "in there so badly?"
textBoxWait

textBox
printf "Kid: I uhh..."
textBoxLine2
printf "I want to... pet the animals."
textBoxLine3
printf "Hehehe..."
textBoxWait

textBox
printf "You: ..."
textBoxLine2
printf "Makes sense to me."
textBoxLine3
printf "I'll see what I can do."
textBoxWait

talkKid=1

elif [ $talkKid == 1 ]; then

textBox
printf "Kid: Have you found a"
textBoxLine2
printf "way in yet?"
textBoxWait

textBox
printf "You: No, I'm still working"
textBoxLine2
printf "on it. Hey, why can't you"
textBoxLine3
printf "just climb over the fence?"
textBoxWait

textBox
printf "The kid says nothing, only"
textBoxLine2
printf "glaring at you as if you said"
textBoxLine3
printf "something that you really"
textBoxLine4
printf "shouldn't have."
textBoxWait

textBox
printf "You: Okay, sorry."
textBoxLine2
printf "My bad for asking."
textBoxWait

fi
