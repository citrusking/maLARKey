#!/bin/bash

if [ $talkGrave == 0 ]
then

textBox
printf "Gravedigger: ..."
textBoxLine2
printf "Howdy there, this is no place"
textBoxLine3
printf "fer a kid to be hangin' around."
textBoxWait

textBox
printf "Gravedigger: But if ya"
textBoxLine2
printf "come here to visit a loved one,"
textBoxLine3
printf "then yer welcome anytime."
textBoxWait

textBox
printf "Gravedigger: I know how ya must"
textBoxLine2
printf "feel if'n ya did..."
textBoxLine3
printf "I lost my Betty Jo last year."
textBoxWait

textBox
printf "Gravedigger: She was the love"
textBoxLine2
printf "of my life, and we were married"
textBoxLine3
printf "thirty wonderful years."
textBoxWait

textBox
printf "Gravedigger: I remember the day I"
textBoxLine2
printf "proposed to her with the most"
textBoxLine3
printf "expensive ring I could find..."
textBoxWait

textBox
printf "Gravedigger: But now she and that"
textBoxLine2
printf "ring'll rest forever in this here"
textBoxLine3
printf "graveyard."
textBoxWait

textBox
printf "Gravedigger: I'm just torn up"
textBoxLine2
printf "because I lost my favorite shovel."
textBoxLine3
printf "Betty Jo got it fer me."
textBoxWait

textBox
printf "Gravedigger: Anyways, it's good"
textBoxLine2
printf "to know that the young'ns are"
textBoxLine3
printf "paying respect to the dead."
textBoxWait

textBox
printf "Gravedigger: That cheers me up"
textBoxLine2
printf "a bit, thank you."
textBoxWait

talkGrave=1

elif [ $talkGrave == 1 ] && [ $copperGot == 0 ] && [ `ls myInventory | grep "Shovel" | wc -l` == 0 ]
then

textBox
printf "Gravedigger: I hope ya"
textBoxLine2
printf "enjoy yer visit."
textBoxWait

elif [ $talkGrave == 1 ] && [ `ls myInventory | grep "Shovel" | wc -l` == 1 ]
then

textBox
printf "Gravedigger: That shovel!"
textBoxLine2
printf "I'd recognize it anywhere!"
textBoxLine3
printf "That's the shovel my wife gave me!"
textBoxWait

while true
do

textBox
printf "Did ya find that fer me?"
textBoxLine2
printf "Thank ya so much!"
textBoxLine3
printf "Will ya hand that over fer me?"
textBoxPrompt

case $prompt in

Y | y)
        tput cup $frameHeight
        tput ed
        textBox
        printf "You hand over the gravedigger's"
        textBoxLine2
        printf "shovel and watch his face light up."
        textBoxWait

	textBox
	printf "Gravedigger: Thank ya so much!"
	textBoxLine2
	printf "Ya know what? Betty Jo always"
	textBoxLine3
	printf "loved you young'ns."
	textBoxWait

	textBox
	printf "Gravedigger: Here, ya can have my"
	textBoxLine2
	printf "wedding ring. I know Betty Jo wouldn't"
	textBoxLine3
	printf "want me holdin' on to the past so much."
	textBoxWait

        rm myInventory/Shovel
        echo "The gravedigger's copper wedding ring. Given to you as a gift for performing a good deed." > myInventory/copperRing
	copperGot=1

        textBox
        printf "copperRing was added to inventory."
        textBoxWait

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

elif [ $copperGot == 1 ]
then

textBox
printf "Gravedigger: Thank ya once again."
textBoxLine2
printf "Yer welcome here anytime."
textBoxWait

fi
