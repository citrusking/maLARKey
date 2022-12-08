#!/bin/bash

function yesNo(){
tput cup $(( $frameHeight + 7 )) 3
read -s -N 1 -p "Type Y for yes or N for no" input
}

textBox
printf "    Here lies Betty Jo Gravedigger"
textBoxLine2
printf "Proud mother of the Gravedigger family"
textBoxLine3
printf "    Loved by all but known by few"
headstoneWait

if [ `ls myInventory | grep "Shovel" | wc -l` == 1 ] && [ $graveDug == 0 ]
then

while true
do

textBox
printf "Do you wish to dig up this corpse,"
textBoxLine2
printf "defile this grave, and disgust"
textBoxLine3
printf "the general public to steal a ring?"

tput cup $(( $frameHeight + 7 )) 3
read -s -N 1 -p "Type Y for yes or N for no" input
case $input in

Y | y)
	tput cup $frameHeight
	tput ed
	textBox
	printf "You dig up the rotting corpse"
	textBoxLine2
	printf "and take the ring from off its finger."
	textBoxWait
	
	rm myInventory/Shovel
	echo "Golden ring robbed from the grave of a poor old lady." > myInventory/goldenRing
	
	textBox
	printf "goldenRing was added to inventory."
	textBoxWait
	
	graveDug=1
	break
	;;

N | n)
	break
	;;

*)
	;;

esac

done

tput cup $frameHeight
tput ed

elif [ $graveDug == 1 ]
then

textBox
printf "The gravedigger's wife lies"
textBoxLine2
printf "cold and lifeless in the open coffin."
textBoxLine3
printf "She didn't need that ring anyway."
textBoxWait

fi
