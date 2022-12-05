#!/bin/bash

placeWall 6 1
placeWall 6 2
placeWall 6 3
placeWall 6 4
placeWall 7 4
placeWall 8 4
placeWall 9 4
placeWall 12 4
placeWall 13 4
placeWall 14 4
placeWall 15 4
placeWall 15 3
placeWall 15 2
placeWall 15 1

placeTransition 10 1
placeTransition 11 1

placeObject 10 4
placeObject 11 4

placeNPC 13 7

if [ $enterMapOne == 0 ]; then

textBox
printf "You open your eyes and you"
textBoxLine2
printf "see nothing but the vast blue"
textBoxLine3
printf "sky hanging high above you."
textBoxWait

textBox
printf "You feel freshly grazen grass"
textBoxLine2
printf "beneath you as a small group"
textBoxLine3
printf "of vultures fly off from"
textBoxLine4
printf "the ground surrounding you."
textBoxWait

textBox
printf "This feels... familiar."
textBoxLine2
printf "Like a picnic you had long"
textBoxLine3
printf "ago. On a calm Summer day."
textBoxWait

textBox
printf "... Minus the vultures."
textBoxWait

textBox
printf "You stand up and observe your"
textBoxLine2
printf "surroundings. Suddenly things"
textBoxLine3
printf "feel much less familiar."
textBoxWait

textBox
printf "You are standing in a large grassy"
textBoxLine2
printf "field, surrounded by a large fence."
textBoxLine3
printf "A teenage boy hurriedly comes through"
textBoxLine4
printf "the fence with a pitchfork,"
textBoxWait

textBox
printf "making sure to lock it behind him."
textBoxLine2
printf "He looks around and spots you,"
textBoxLine3
printf "immediately letting out a sigh of"
textBoxLine4
printf "relief and waving to you."
textBoxWait

textBox
printf "Soon, an aching sensation floods"
textBoxLine2
printf "over your head."
textBoxWait

textBox
printf "Who is this person?"
textBoxLine2
printf "They seem to have mistaken you"
textBoxLine3
printf "for somebody else."
textBoxWait

textBox
printf "Something is very wrong here."
textBoxLine2
printf "If only you could tell what..."
textBoxWait

tput cup $(( frameHeight + 1 ))

printf "%0.s* " {1..22}
echo
echo "Welcome to maLARKey, a"
echo "Linux Activity to Reinforce Knowledge"
echo "set in the wild west!"

echo
read -s -p "Press enter to continue" typePrompt
tput cup $frameHeight
tput ed
tput cup $(( frameHeight + 1 ))

printf "%0.s* " {1..22}
echo
echo "You control your character by using"
echo "the WASD buttons. If you want to run"
echo "forward a few spaces, just hold shift"
echo "before pressing the button."

echo
read -s -p "Press enter to continue" typePrompt
tput cup $frameHeight
tput ed
tput cup $(( frameHeight + 1 ))

printf "%0.s* " {1..22}
echo
echo "On the map, you will see colored squares."
echo "The square of your selected color is"
echo "the player character."

echo
read -s -p "Press enter to continue" typePrompt
tput cup $frameHeight
tput ed
tput cup $(( frameHeight + 1 ))

printf "%0.s* " {1..22}
echo
echo "The light blue squares are characters"
echo "you can talk to, and the cyan squares"
echo "are objects that you can interact with."
echo "The yellowish squares are transition spaces"
echo "that will transition you to the next map area."
echo "Dark gray squares are just walls or fences."

echo
read -s -p "Press enter to continue" typePrompt
tput cup $frameHeight
tput ed
tput cup $(( frameHeight + 1 ))

printf "%0.s* " {1..22}
echo
echo "To interact with an adjacent square,"
echo "just press E."
echo
echo "Have fun!"
echo
read -s -p "Press enter to continue" typePrompt
tput cup $frameHeight
tput ed

enterMapOne=1

fi
