#!/bin/bash

#start area friend

if [ $friendTalk == 0 ]
then

textBox
printf "???: Hey, how's it going?"
textBoxLine2
printf "What are you doing here?"
textBoxWait

textBox
printf "You: ..."
textBoxWait

textBox
printf "???: I thought a coyote"
textBoxLine2
printf "had gotten into the field again,"
textBoxLine3
printf "but it was just you!"
textBoxWait

textBox
printf "???: Um..."
textBoxLine2
printf "... Aren't you going to say something?"
textBoxWait

textBox
printf "At first you had nothing to say,"
textBoxLine2
printf "but now you've come to a realization."
textBoxLine3
printf "It's not just that you don't want to"
textBoxLine4
printf "speak, but that you \033[1;35mcan't\033[0m speak."
textBoxWait

textBox
printf "You wonder what could have happened to"
textBoxLine2
printf "give you this sense of weakness"
textBoxLine3
printf "and unfamiliarity."
textBoxWait

textBox
printf "???: Oh, you're doing that"
textBoxLine2
printf "thing again, aren't you?"
textBoxLine3
printf "You must have \033[1;35mforgotten\033[0m again."
textBoxWait

textBox
printf "This person must be mistaken, because"
textBoxLine2
printf "this is the first time you've"
textBoxLine3
printf "ever seen them."
textBoxWait

textBox
printf "... Or is it? You try to think back"
textBoxLine2
printf "as far as you can, but all you can"
textBoxLine3
printf "remember is being here in this field,"
textBoxLine4
printf "just before this person arrived."
textBoxWait

textBox
printf "???: Alright, you must be real"
textBoxLine2
printf "confused right now, huh?"
textBoxLine3
printf "I'll explain."
textBoxWait

textBox
printf "You can barely wrap your head around"
textBoxLine2
printf "this situation."
textBoxLine3
printf "Nothing makes any sense."
textBoxWait

textBox
printf "Have you met this person before?"
textBoxLine2
printf "They act like this has happened"
textBoxLine3
printf "before. How many times have you"
textBoxLine4
printf "forgotten everything?"
textBoxWait

textBox
printf "You realize you don't even"
textBoxLine2
printf "know your own name."
textBoxLine4
printf "You do your best to stay calm."
textBoxWait

case $seed in
1)
        friendName="John"
        mkdir johnInventory
	cp ../.note.txt johnInventory/note.txt
        ;;
2)
        friendName="Jacob"
        mkdir jacobInventory
	cp ../.note.txt jacobInventory/note.txt
        ;;
3)
        friendName="Jay"
        mkdir jayInventory
	cp ../.note.txt jayInventory/note.txt
        ;;
esac

textBox
printf "???: Okay, my name's "$friendName"."
textBoxLine2
printf "I'm your friend."
textBoxWait

if [ $seed == 3 ]; then
textBox
printf "$friendName: Well, my name's actually"
textBoxLine2
printf "Jingleheimer, but it's Jay for short."
textBoxWait

textBox
printf "$friendName: What are you looking at me like"
textBoxLine2
printf "that for? Jingleheimer is a good name!"
textBoxLine3
printf "It's been passed down through the"
textBoxLine4
printf "Schmidt family for generations."
textBoxWait

textBox
printf "$friendName: Anyways..."
textBoxWait
fi

textBox
printf "$friendName: We live in Larktown, a town"
textBoxLine2
printf "where everybody loves to use Linux!"
textBoxLine3
printf "I was actually just on my way to"
textBoxLine4
printf "find you!"
textBoxWait

textBox
printf "$friendName: I uhh... I can't really"
textBoxLine2
printf "explain, but I need your help to get"
textBoxLine3
printf "to our professor's house. That guy has"
textBoxLine4
printf "really crossed the line this time..."
textBoxWait

textBox
printf "You: ..."
textBoxWait

textBox
printf "$friendName: Oh, right! You can't talk!"
textBoxLine2
printf "Well, if there's anything that'll"
textBoxLine3
printf "help you, I think it'd be Linux!"
textBoxWait

textBox
printf "You don't even know what Linux"
textBoxLine2
printf "is, but if it can really help,"
textBoxLine3
printf "you'll give it a shot."
textBoxWait

textBox
printf "$friendName: Our world is operated by"
textBoxLine2
printf "a system; an operating system, if you"
textBoxLine3
printf "will, called Linux."
textBoxWait

textBox
printf "$friendName: And we have the ability to"
textBoxLine2
printf "interact with that system by using a"
textBoxLine3
printf "command line. You can access the"
textBoxLine4
printf "command line by pressing T or \$."
textBoxWait

textBox
printf "$friendName: Commands are special words that"
textBoxLine2
printf "we can enter into the command line"
textBoxLine3
printf "that perform specific functions."
textBoxWait

textBox
printf "$friendName: One of those commands is echo."
textBoxLine2
printf "Echo is a command that returns exactly"
textBoxLine3
printf "what you type after the word echo."
textBoxWait

friendTalk=1

fi

if [ $friendTalk == 1 ] && [ $tutorialEcho == 0 ]; then

textBox
printf "$friendName: Try it now!"
textBoxLine2
printf "Open the command line with T or \$"
textBoxLine3
printf "and type echo followed by a message"
textBoxLine4
printf "to talk to me using Linux!"
textBoxWait

fi

if [ $tutorialEcho == 1 ] && [ $friendTalk != 2 ]; then

textBox
printf "$friendName: Good job! You just executed"
textBoxLine2
printf "a command in Linux! Well, how"
textBoxLine3
printf "do you feel? Can you say something?"
textBoxWait

textBox
printf "With your monumentous newfound"
textBoxLine2
printf "achievement, you suddenly feel"
textBoxLine3
printf "a bit more confident, and"
textBoxLine4
printf "something clicked."
textBoxWait

textBox
printf "You: ..."
textBoxWait

textBox
printf "You: I..."
textBoxLine2
printf "I can..."
textBoxLine3
printf "Thank you."
textBoxWait

textBox
printf "$friendName replied with a warm smile"
textBoxLine2
printf "that felt somewhat familiar, and"
textBoxLine3
printf "somewhat comforting."
textBoxWait

textBox
printf "$friendName: Alright, now meet me outside"
textBoxLine2
printf "the Professor's house and you'll see"
textBoxLine3
printf "why I need your help."
textBoxWait

textBox
printf "$friendName: Oh yeah! Here's the key to"
textBoxLine2
printf "that gate. I locked it when I got"
textBoxLine3
printf "here. Also, I should teach you about"
textBoxLine4
printf "ls and cat."
textBoxWait

echo "The key to a gate in a random field." > myInventory/gateKey

textBox
printf "gateKey was added to inventory"
textBoxWait

textBox
printf "$friendName: ls is a command that lists"
textBoxLine2
printf "the contents of a directory. A"
textBoxLine3
printf "directory is a special place in Linux"
textBoxLine4
printf "where things are stored."
textBoxWait

textBox
printf "$friendName: If you just enter ls,"
textBoxLine2
printf "you will see a list of everything"
textBoxLine3
printf "in your current directory."
textBoxWait

textBox
printf "$friendName: If you enter ls followed"
textBoxLine2
printf "by the name of a directory, it will"
textBoxLine3
printf "list everything in that directory."
textBoxWait

textBox
printf "$friendName: Right now the only"
textBoxLine2
printf "directories you should see are"
textBoxLine3
printf "our inventories."
textBoxWait

textBox
printf "$friendName: If you want to look at"
textBoxLine2
printf "a certain item in your inventory,"
textBoxLine3
printf "just use the cat command by typing cat"
textBoxLine4
printf "followed by the location of the item."
textBoxWait

textBox
printf "$friendName: For instance, you could"
textBoxLine2
printf "type cat myInventory/gateKey to"
textBoxLine3
printf "look at the gate key."
textBoxWait

friendTalk=2

fi

if [ $friendTalk == 2 ]; then

textBox
printf "$friendName: That should be everything"
textBoxLine2
printf "you need to get started, I'll see you"
textBoxLine3
printf "outside the Professor's house!"
textBoxWait

fi
