#!/bin/bash

placeTransition 20 10
placeTransition 20 11
placeTransition 10 1
placeTransition 11 1
placeTransition 1 10
placeTransition 1 11

if [ $gunGiven == 0 ]; then
placeNPC 8 4
fi

if [ $enterMapThree == 0 ]; then

textBox
printf "The path brings you to the"
textBoxLine2
printf "middle of nowhere. There is"
textBoxLine3
printf "not much out here."
textBoxWait

textBox
printf "The path does, however, split"
textBoxLine2
printf "into two, and sitting on a rock at"
textBoxLine3
printf "the edge of one path is a teenager"
textBoxLine4
printf "drawing in the dirt with a stick."
textBoxWait

enterMapThree=1

elif [ $shitCount == 3 ] && [ $enterMapThree == 1 ]; then

textBox
printf "Kid: Hey! Looks like you got"
textBoxLine2
printf "what you were looking for!"
textBoxLine3
printf "Thanks a whole bunch, stranger!"
textBoxWait

textBox
printf "Kid: I can't help but notice"
textBoxLine2
printf "that you used a gun to break in"
textBoxLine3
printf "there! My pa never lets me use"
textBoxLine4
printf "his gun because he don't trust me."
textBoxWait

textBox
printf "Kid: Do you mind handing that gun"
textBoxLine2
printf "over to me? I promise I'll be"
textBoxLine3
printf "responsible... I'll only shoot a"
textBoxLine4
printf "few co- I mean... rocks."
textBoxWait

while true
do

textBox
printf "Kid: How 'bout it? Can I have"
textBoxLine2
printf "that gun?"
textBoxPrompt

case $prompt in
y|Y)
	rm myInventory/Gun
	
	textBox
	printf "You hand over the gun to"
	textBoxLine2
	printf "the kid who clearly is"
	textBoxLine3
	printf "up to no good. Who cares,"
	textBoxLine4
	printf "anyways?"
	textBoxWait

	gunGiven=1

	textBox
	printf "Kid: Wait, really?"
	textBoxLine2
	printf "Haha, thanks a whole lot!"
	textBoxLine3
	printf "Sucker..."
	textBoxWait

	textBox
	printf "Kid: YEEEEHAW!!"
	textBoxWait

	placeBlock 8 4
	map3coordX8Y4=""

	textBox
	printf "The kid runs off towards the"
	textBoxLine2
	printf "ranch while firing the gun into"
	textBoxLine3
	printf "the air. Surely nothing bad"
	textBoxLine4
	printf "will come of this."
	textBoxWait
	
	break
	;;

n|N)
	textBox
	printf "Kid: Pfft, you're no fun."
	textBoxWait

	break
	;;

*)
	;;
esac
done

enterMapThree=2

fi


