#!/bin/bash

if [ $talkBlind == 0 ]; then

textBox
printf "You: Hi there!"
textBoxWait

textBox
printf "Man: Um, hi."
textBoxLine2
printf "Why are you in my house?"
textBoxWait

textBox
printf "You: You didn't seem to mind..."
textBoxWait

textBox
printf "Man: Well maybe some people"
textBoxLine2
printf "can't mind when somebody enters"
textBoxLine3
printf "their house."
textBoxWait

textBox
printf "You: ... What?"
textBoxWait

textBox
printf "Man: I'm saying that most people"
textBoxLine2
printf "have the ability to mind when a"
textBoxLine3
printf "random person enters their house,"
textBoxLine4
printf "but I don't. You see?"
textBoxWait

textBox
printf "You: ... No?"
textBoxWait

textBox
printf "Man: Well I don't either!"
textBoxWait

textBox
printf "You: ..."
textBoxWait

textBox
printf "Man: ..."
textBoxWait

textBox
printf "Man: I'm blind."
textBoxWait

textBox
printf "You: Oh. Well you left your door open."
textBoxWait

textBox
printf "Blind Man: I DID?"
textBoxWait

textBox
printf "Blind Man: I guess I can't blame you."
textBoxLine2
printf "Sorry, I'm a bit irritable because"
textBoxLine3
printf "I've had something on my mind."
textBoxWait

textBox
printf "Blind Man: If you help me out with"
textBoxLine2
printf "this problem, I can pay you."
textBoxWait

textBox
printf "You: Sure, okay."
textBoxLine2
printf "What's the problem?"
textBoxWait

textBox
printf "Blind Man: Well, you see, I..."
textBoxLine2
printf "I um.."
textBoxLine3
printf "I have a crush."
textBoxWait

textBox
printf "Blind Man: I have a bit of a"
textBoxLine2
printf "crush on my neighbor, but I'm"
textBoxLine3
printf "too scared to talk to her."
textBoxLine4
printf "I need you to give her a message."
textBoxWait

textBox
printf "You: Aren't you like 30?"
textBoxWait

textBox
printf "Blind Man: Shut up! Anyways,"
textBoxLine2
printf "she has the most beautiful singing"
textBoxLine3
printf "voice I've ever heard..."
textBoxLine4
printf "I want you to tell her... Um..."
textBoxWait

textBox
printf "Blind Man: I want you to tell"
textBoxLine2
printf "her that I said hi!"
textBoxWait

talkBlind=1

fi

if [ $talkBlind == 1 ] && [ $talkDeaf != 2 ]; then

textBox
printf "Blind Man: Tell her exactly this:"
textBoxLine2
printf "\"The man next door says hi.\""
textBoxWait

fi

if [ $talkBlind == 1 ] && [ $talkDeaf == 2 ] && [ `ls manInventory | grep "Envelope" | wc -l` == 0 ]; then

textBox
printf "Blind Man: Well? What did she say?"
textBoxWait

elif [ $talkBlind == 1 ] && [ $talkDeaf == 2 ] && [ `ls manInventory | grep "Envelope" | wc -l` == 1 ]; then

textBox
printf "Blind Man: Wh... What did you"
textBoxLine2
printf "just give me?"
textBoxWait

textBox
printf "You: An envelope. She wrote"
textBoxLine2
printf "you a letter."
textBoxWait

textBox
printf "Blind Man: ..."
textBoxWait

textBox
printf "Blind Man: ... ..."
textBoxWait

textBox
printf "Blind Man: YOU DIDN'T TELL"
textBoxLine2
printf "HER THAT I WAS BLIND???"
textBoxWait

textBox
printf "You: Well, it's only fair."
textBoxLine2
printf "You didn't tell me that she"
textBoxLine3
printf "was deaf."
textBoxWait

textBox
printf "Blind Man: SHE'S WHAT???"
textBoxWait

textBox
printf "Blind Man: Oh no, this is bad."
textBoxLine2
printf "This is very bad. This means"
textBoxLine3
printf "I'll have to go see her myself"
textBoxLine4
printf "In order to talk to her!"
textBoxWait

textBox
printf "You: ..."
textBoxWait

textBox
printf "Blind Man: You know what I mean!"
textBoxLine2
printf "Well, at the very least, you did"
textBoxLine3
printf "what I asked. Here's your payment."
textBoxWait

echo "Good ol' American dollar given by the blind man" > myInventory/blindDollar
dollars=$(( $dollars + 1 ))

textBox
printf "blindDollar was added to inventory."
textBoxWait

talkBlind=2

fi

if [ $talkBlind == 2 ] && [ "$map6coordX18Y4" == "" ]; then

textBox
printf "Blind Man: I really need to build"
textBoxLine2
printf "up my confidence. That might take"
textBoxLine3
printf "a while. Or at least until you"
textBoxLine4
printf "leave town and come back."
textBoxWait

elif [ $talkBlind == 2 ] && [ "$map6coordX18Y4" != "" ]; then

textBox
printf "Blind Man: Is that you?"
textBoxLine2
printf "Yeah, I thought I recognized"
textBoxLine3
printf "those footsteps!"
textBoxWait

textBox
printf "Blind Man: Hey, thank you so much"
textBoxLine2
printf "for helping me out! Communicating"
textBoxLine3
printf "with her isn't easy, but I can"
textBoxLine4
printf "kinda write and she can kinda talk,"
textBoxWait

textBox
printf "Blind Man: so we make do! Hey,"
textBoxLine2
printf "you used the mv command earlier to"
textBoxLine3
printf "give me that envelope right?"
textBoxWait

textBox
printf "Blind Man: Well, there's another"
textBoxLine2
printf "Linux command that's really similar"
textBoxLine3
printf "to mv and it's really useful!"
textBoxLine4
printf "It's called 'cp'."
textBoxWait

textBox
printf "Blind Man: cp is a command that"
textBoxLine2
printf "copies a file instead of moving it!"
textBoxLine3
printf "And the syntax is the exact same!"
textBoxLine4
printf "Isn't that neat?"
textBoxWait

fi
