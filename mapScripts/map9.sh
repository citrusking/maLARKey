#!/bin/bash

placeWall 1 1
placeWall 1 2
placeWall 1 3
placeWall 1 4
placeWall 1 5
placeWall 1 6
placeWall 2 6
placeWall 3 6
placeWall 4 6
placeWall 5 6
placeWall 6 6
placeWall 6 5
placeWall 6 4
placeWall 6 2
placeWall 6 1
placeWall 5 1
placeWall 4 1
placeWall 3 1
placeWall 2 1

placeNPC 3 3

placePlayer 5 15

textBox
printf "The path leads to a small plot"
textBoxLine2
printf "of land. On the corner of that"
textBoxLine3
printf "small plot of land sits the smallest,"
textBoxLine4
printf "saddest house you've ever seen."
textBoxWait

textBox
printf "Behind you, you hear frantic"
textBoxLine2
printf "footsteps approaching."
textBoxWait

placeNPC 7 15

textBox
printf "$friendName: Hey! Why didn't you"
textBoxLine2
printf "wake me up?"
textBoxWait

textBox
printf "$friendName: Anyways, this must be it!"
textBoxLine2
printf "A bit smaller than I expected, but"
textBoxLine3
printf "whatever."
textBoxWait

textBox
printf "You watch as $friendName pulls"
textBoxLine2
printf "out a bag full of rotten eggs"
textBoxLine3
printf "and throws them one by one at"
textBoxLine4
printf "the sad, dingy hut."
textBoxWait

textBox
printf "$friendName: That's for giving"
textBoxLine2
printf "me an F!"
textBoxLine3
printf "Now my grade isn't the only"
textBoxLine4
printf "thing that stinks!"
textBoxWait

placeBlock 3 3
placeNPC 8 3

textBox
printf "Professor: HEY! What's going"
textBoxLine2
printf "out here!?"
textBoxWait

textBox
printf "$friendName: Oh, shoot. Better run!"
textBoxWait

placeBlock 7 15

textBox
printf "And just like that, $friendName was gone."
textBoxWait

textBox
printf "You: Huh. Okay then."
textBoxWait

placeBlock 8 3
placeNPC 5 13

textBox
printf "Professor: Did $friendName get you"
textBoxLine2
printf "roped up in one of his stupid pranks"
textBoxLine3
printf "again?"
textBoxWait

if [ $gunGiven == 1 ] || [ $graveDug == 1 ]; then

textBox
printf "Professor: Wait a second... it"
textBoxLine2
printf "actually makes sense that you would"
textBoxLine3
printf "enjoy harassing others for some"
textBoxLine4
printf "dumb prank."
textBoxWait

fi

if [ $gunGiven == 1 ] && [ $graveDug == 0 ]; then

textBox
printf "Professor: I heard that you"
textBoxLine2
printf "were the one that gave that gun"
textBoxLine3
printf "to the kid that shot up the ranch!"
textBoxLine4
printf "Who gives a child a gun!?"
textBoxWait

fi

if [ $gunGiven == 0 ] && [ $graveDug == 1 ]; then

textBox
printf "Professor: I heard that you"
textBoxLine2
printf "dug up the old gravedigger's wife!"
textBoxWait

textBox
printf "Professor: What the fuck?"
textBoxLine2
printf "Like, seriously... what the fuck?"
textBoxWait

fi

if [ $gunGiven == 1 ] && [ $graveDug == 1 ]; then

textBox
printf "Professor: I heard that you not"
textBoxLine2
printf "only gave a kid a gun, but you"
textBoxLine3
printf "also dug up the actual corpse"
textBoxLine4
printf "of that old gravedigger's wife!"
textBoxWait

textBox
printf "Professor: I am disgusted."
textBoxLine2
printf "I genuinely don't understand you."
textBoxLine3
printf "You must get off on terrorizing"
textBoxLine4
printf "innocent people."
textBoxWait

textBox
printf "Professor: I thought I knew"
textBoxLine2
printf "you... it seems you're nothing"
textBoxLine3
printf "more than a sick monster."
textBoxWait

fi

textBox
printf "Professor: Explain yourself!"
textBoxWait

textBox
printf "You: Um, I... I'm so confused."
textBoxLine2
printf "He told me that you were evil,"
textBoxLine3
printf "and that you lived in some weird"
textBoxLine4
printf "giant mansion."
textBoxWait

textBox
printf "Professor: What? That's a"
textBoxLine2
printf "load of \033[1;35mmalarkey\033[0m!"
textBoxWait

textBox
printf "You: ..."
textBoxWait

textBox
printf "Professor: ..."
textBoxWait

textBox
printf "You: ..."
textBoxWait

textBox
printf "Professor ... What?"
textBoxWait

textBox
printf "You: I don't know, something"
textBoxLine2
printf "felt weird about that."
textBoxWait

textBox
printf "Professor: Well, I mean, it"
textBoxLine2
printf "is a pretty weird word."
textBoxWait

textBox
printf "You: No that's not it, it's"
textBoxLine2
printf "kinda like- you know what?"
textBoxLine3
printf "Whatever, forget about it."
textBoxWait

textBox
printf "You: So, you're not evil?"
textBoxWait

textBox
printf "Professor: Nope."
textBoxWait

textBox
printf "You: And you clearly don't"
textBoxLine2
printf "have a giant evil mansion."
textBoxWait

textBox
printf "Professor: Heavens, no."
textBoxLine2
printf "You think I get paid that much?"
textBoxWait

textBox
printf "You: Then, you don't cackle"
textBoxLine2
printf "maniacally while you assign"
textBoxLine3
printf "homework to students who are"
textBoxLine4
printf "already overloaded with work?"
textBoxWait

textBox
printf "Professor: Oh, no I totally do that."
textBoxWait

textBox
printf "You: What?"
textBoxWait

textBox
printf "Professor: Yeah, that's actually"
textBoxLine2
printf "my favorite pastime. It really"
textBoxLine3
printf "keeps me going."
textBoxWait

textBox
printf "You: Huh. Alright."
textBoxLine2
printf "What was with the giant walls"
textBoxLine3
printf "that blocked the way here?"
textBoxWait

textBox
printf "Professor: What, can you blame"
textBoxLine2
printf "me for taking extra care to have"
textBoxLine3
printf "some security? People ride around"
textBoxLine4
printf "on horses and steal trains and stuff!"
textBoxWait

textBox
printf "You: ..."
textBoxWait

textBox
printf "You: It's just..."
textBoxWait

textBox
printf "You: Nothing in my life feels like"
textBoxLine2
printf "it makes any sense anymore."
textBoxLine3
printf "I don't understand any of it."
textBoxWait

textBox
printf "You: No matter what I do, it feels"
textBoxLine2
printf "like I just end up back where I"
textBoxLine3
printf "started. I get the feeling I've been"
textBoxLine4
printf "going in circles for a very long time."
textBoxWait

textBox
printf "You: Maybe longer than I realize."
textBoxLine2
printf "I decided I would just let go of"
textBoxLine3
printf "any control; that I'd just go along"
textBoxLine4
printf "with whatever came my way."
textBoxWait

textBox
printf "You: But lately, it's just been"
textBoxLine2
printf "so... so meaningless."
textBoxWait

textBox
printf "You: ..."
textBoxWait

sleep 1

textBox
printf "Professor: Dude, chill out, this is"
textBoxLine2
printf "literally just a stupid educational"
textBoxLine3
printf "game."
textBoxWait

textBox
printf "Professor: ... But, everyone feels"
textBoxLine2
printf "like that in one way or another."
textBoxWait

textBox
printf "Professor: But it's okay. The"
textBoxLine2
printf "world never made any sense to"
textBoxLine3
printf "begin with! Just look around!"
textBoxWait

textBox
printf "Professor: The fact that you and I"
textBoxLine2
printf "are even alive on this planet is"
textBoxLine3
printf "truly miraculous."
textBoxWait

textBox
printf "Professor: Heck, I saw a bird"
textBoxLine2
printf "with a gun the other day!"
textBoxWait

textBox
printf "Professor: And even the incident"
textBoxLine2
printf "that led to your amnesia..."
textBoxLine3
printf "Well, maybe I shouldn't talk"
textBoxLine4
printf "about it..."
textBoxWait

textBox
printf "Professor: But my point is:"
textBoxLine2
printf "there isn't a point to any of it!"
textBoxLine3
printf "Nothing inherently matters more"
textBoxLine4
printf "than any other thing."
textBoxWait

textBox
printf "Professor: And that is truly,"
textBoxLine2
printf "truly freeing."
textBoxWait

sleep 1

textBox
printf "You: ..."
textBoxWait

textBox
printf "You: Thank you."
textBoxWait

textBox
printf "Professor: Hey, don't mention it."
textBoxWait

textBox
printf "Professor: Besides, I need you to"
textBoxLine2
printf "help clean up this mess."
textBoxWait

clear
printEnd
echo
printf "Press Q to quit (thanks for playing!)"

