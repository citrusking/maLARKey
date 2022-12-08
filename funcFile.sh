#!/bin/bash

#ease of use functions:
#these functions are just here so that i don't have to memorize the commands

#these change cursor visibility
function invisible(){ tput civis; }
function visible(){ tput cvvis; }

#these change background color
function bgBlack(){ printf "\033[40m"; }
function bgRed(){ printf "\033[41m"; }
function bgGreen(){ printf "\033[42m"; }
function bgOrange(){ printf "\033[43m"; }
function bgBlue(){ printf "\033[44m"; }
function bgMagenta(){ printf "\033[45m"; }
function bgCyan(){ printf "\033[46m"; }
function bgLGray(){ printf "\033[47m"; }
function bgDGray(){ printf "\033[100m"; }
function bgLRed(){ printf "\033[101m"; }
function bgLGreen(){ printf "\033[102m"; }
function bgYellow(){ printf "\033[103m"; }
function bgLBlue(){ printf "\033[104m"; }
function bgLPurple(){ printf "\033[105m"; }
function bgTeal(){ printf "\033[106m"; }
function bgWhite(){ printf "\033[107m"; }



#map frame functions:


function border(){
#this function prints the top and bottom borders
#use frame width as arg 1, color command as arg 2

$2
for (( BLength=0; BLength<$1; BLength++ )); do
printf " "
done

bgBlack
printf "\n"
}


function borderBlank(){
#this function prints the side borders and the spaces between
#use frame width as arg 1, color command as arg 2

#this block prints the left border
$2
printf "  " #prints two white because width = height / 2
bgBlack

#this block prints the blank spaces in the map
for (( BBSpace=0; BBSpace<$(( $1 - 4 )); BBSpace++ )); do #-4 because 2 width on each end
printf " "
done

#this block prints the right border
$2
printf "  " #prints two white because width = height / 2
bgBlack
printf "\n"
}


function printSquare(){
#this function prints a square (really just two spaces)
#this basically just exists for readability

printf "  "
}


function blankMap(){
#this function prints the blank map
#use map dimensions (length and width same) as arg 1, color command as arg 2


#this block clears and sets variables
clear
frameHeight=$(( $1 + 2 ))
frameWidth=$(( $frameHeight * 2 )) #frameWidth is double frame height because rows are twice the size of columns
mapHeight=$1
mapWidth=$1

#this block calls the border functions
border $frameWidth $2
for (( j=0; j<$mapHeight; j++ )); do
borderBlank $frameWidth $2
done
border $frameWidth $2
}


function textBox(){
#this function places the text box beneath the map


tput cup $(( $frameHeight + 1 ))
border $frameWidth bgLGray
for (( TBHeight=0; TBHeight<8; TBHeight++ )); do
borderBlank $frameWidth bgLGray
done
border $frameWidth bgLGray

tput cup $(( $frameHeight + 3 )) 3
}


#this function places the cursor at the second line in the box
function textBoxLine2(){ tput cup $(( $frameHeight + 4 )) 3; }


#this function places the cursor at the third line in the box
function textBoxLine3(){ tput cup $(( $frameHeight + 5 )) 3; }


#this function places the cursor at the fourth line in the box
function textBoxLine4(){ tput cup $(( $frameHeight + 6 )) 3; }


function textBoxWait(){
#this function adds the waiting line at the bottom of the text box and awaits input

tput cup $(( $frameHeight + 8 )) 3

read -s -p "Press enter to continue" input

tput cup $frameHeight
tput ed
}


function headstoneWait(){
tput cup $(( $frameHeight + 8 )) 3
read -s -p "        Press enter to continue" input

tput cup $frameHeight
tput ed
}

function textBoxPrompt(){
tput cup $(( $frameHeight + 8 )) 3
read -s -N 1 -p "Type Y for yes or N for no" prompt
}



#map script functions


function placeBlock(){
#this function places a block given any coordinates
#use X and Y in map as args (Y starts at top)


#this block defines variables
blockX=$1
blockY=$2
blockPosX=$(( $blockX * 2 ))
blockPosY=$blockY

#this block places the cursor and prints the block
tput cup $blockPosY $blockPosX
printSquare
tput cup $(( $frameHeight + 1 ))
}


function placePlayer(){
#this function places the player on the map
#use X and Y in map as args (Y starts at top)


#this block sets variables
playerX=$1 #X position in map
playerY=$2 #Y position in map
playerPosX=$(( $playerX * 2 )) #playerPosX is the X position (starts at 0)
playerPosY=$playerY #playerPosY is the Y position (starts at 0)

#this block places the cursor and prints player color
tput cup $playerPosY $playerPosX
$playerColor; printSquare; bgBlack;
}


function placeWall(){
#this function places a wall
#use X and Y in map as args (Y starts at top)

bgDGray
placeBlock $1 $2
bgBlack
coordVar=map"$mapNum"coordX"$1"Y"$2"
declare -g $coordVar="wall"
}


function placeNPC(){
#this function places an NPC
#use X and Y in map as args (Y starts at top)

bgLBlue
placeBlock $1 $2
bgBlack
coordVar=map"$mapNum"coordX"$1"Y"$2"
declare -g $coordVar="npc"
}


function placeText(){
#this function places a text interactable
#use X and Y in map as args (Y starts at top)

bgLRed
placeBlock $1 $2
bgBlack
coordVar=map"$mapNum"coordX"$1"Y"$2"
declare -g $coordVar="text"
}


function placeObject(){
#this function places a switch/object interactable
#use X and Y in map as args (Y starts at top)

bgCyan
placeBlock $1 $2
bgBlack
coordVar=map"$mapNum"coordX"$1"Y"$2"
declare -g $coordVar="object"
}


function placeTransition(){
#this function places a transition interactable
#use X and Y in map as args (Y starts at top)

bgOrange
placeBlock $1 $2
bgBlack
coordVar=map"$mapNum"coordX"$1"Y"$2"
declare -g $coordVar="transition"
}



#player functions


function left(){
#this function moves the player left one

#this block stops the player from leaving map
if [ $playerX == 1 ]
then
continue
fi

#this block gives collision with other blocks in map
if [ "${!left}" != "" ]
then
continue
fi

#this block removes the player from map
tput cup $playerPosY $playerPosX
bgBlack; printSquare;

#this block adjusts the player variables
playerX=$(( $playerX - 1 ))

#this block places the player on map
placePlayer $playerX $playerY

#this block defines the positions of all surrounding spaces
left=map"$mapNum"coordX"$(( $playerX - 1 ))"Y"$playerY"
right=map"$mapNum"coordX"$(( $playerX + 1 ))"Y"$playerY"
up=map"$mapNum"coordX"$playerX"Y"$(( $playerY - 1 ))"
down=map"$mapNum"coordX"$playerX"Y"$(( $playerY + 1 ))"
}


function right(){
#this function moves the player right one

#this block stops the player from leaving map
if [ $playerX == $mapWidth ]
then
continue
fi

#this block gives collision with other blocks in map
if [ "${!right}" != "" ]
then
continue
fi

#this block removes the player from map
tput cup $playerPosY $playerPosX
bgBlack; printSquare;

#this block adjusts the player variables
playerX=$(( $playerX + 1 ))

#this block places the player on map
placePlayer $playerX $playerY

#this block defines the positions of all surrounding spaces
left=map"$mapNum"coordX"$(( $playerX - 1 ))"Y"$playerY"
right=map"$mapNum"coordX"$(( $playerX + 1 ))"Y"$playerY"
up=map"$mapNum"coordX"$playerX"Y"$(( $playerY - 1 ))"
down=map"$mapNum"coordX"$playerX"Y"$(( $playerY + 1 ))"
}


function up(){
#this function moves the player up one

#this block stops the player from leaving map
if [ $playerY == 1 ]
then
continue
fi

#this block gives collision with other blocks in map
if [ "${!up}" != "" ]
then
continue
fi

#this block removes the player from map
tput cup $playerPosY $playerPosX
bgBlack; printSquare;

#this block adjusts the player variables
playerY=$(( $playerY - 1 ))

#this block places the player on map
placePlayer $playerX $playerY

#this block defines the positions of all surrounding spaces
left=map"$mapNum"coordX"$(( $playerX - 1 ))"Y"$playerY"
right=map"$mapNum"coordX"$(( $playerX + 1 ))"Y"$playerY"
up=map"$mapNum"coordX"$playerX"Y"$(( $playerY - 1 ))"
down=map"$mapNum"coordX"$playerX"Y"$(( $playerY + 1 ))"
}


function down(){
#this function moves the player down one

#this block stops the player from leaving map
if [ $playerY == $mapHeight ]
then
continue
fi

#this block gives collision with other blocks in map
if [ "${!down}" != "" ]
then
continue
fi

#this block removes the player from map
tput cup $playerPosY $playerPosX
bgBlack; printSquare;

#this block adjusts the player variables
playerY=$(( $playerY + 1 ))

#this block places the player on map
placePlayer $playerX $playerY

#this block defines the positions of all surrounding spaces
left=map"$mapNum"coordX"$(( $playerX - 1 ))"Y"$playerY"
right=map"$mapNum"coordX"$(( $playerX + 1 ))"Y"$playerY"
up=map"$mapNum"coordX"$playerX"Y"$(( $playerY - 1 ))"
down=map"$mapNum"coordX"$playerX"Y"$(( $playerY + 1 ))"
}


function quit(){
#this function prompts to quit and quits or doesn't

textBox
printf "Do you want to quit the game?"
textBoxLine3
printf "Progress will not be saved."
textBoxPrompt

case $prompt in

y|Y)
	rm -fr ./*
        clear
        stty echo
        visible
        exit 0
	;;

n|N)
	tput cup $frameHeight
	tput ed
	;;

*)	
	;;

esac
}


function interact(){
#this function checks for interactable spaces adjacent to player and performs their action
#this is done by checking for the existence of a variable named after the coordinates

left=map"$mapNum"coordX"$(( $playerX - 1 ))"Y"$playerY"
right=map"$mapNum"coordX"$(( $playerX + 1 ))"Y"$playerY"
up=map"$mapNum"coordX"$playerX"Y"$(( $playerY - 1 ))"
down=map"$mapNum"coordX"$playerX"Y"$(( $playerY + 1 ))"

tput cup $frameHeight
tput ed

#this block is for objects
if [ "${!left}" == "object" ]
then
	. ../interactScripts/"$left".sh


elif [ "${!right}" == "object" ]
then
        tput cup $frameHeight
        . ../interactScripts/"$right".sh


elif [ "${!up}" == "object" ]
then
        . ../interactScripts/"$up".sh

        
elif [ "${!down}" == "object" ]
then
        . ../interactScripts/"$down".sh

fi

#this block is for NPCs
if [ "${!left}" == "npc" ]
then
        . ../dialogueScripts/"$left".sh


elif [ "${!right}" == "npc" ]
then
        tput cup $frameHeight
        . ../dialogueScripts/"$right".sh


elif [ "${!up}" == "npc" ]
then
        . ../dialogueScripts/"$up".sh


elif [ "${!down}" == "npc" ]
then
        . ../dialogueScripts/"$down".sh
fi


#this block is for transitions
if [ "${!left}" == "transition" ]
then
        . ../interactScripts/transitions/"$left".sh


elif [ "${!right}" == "transition" ]
then
        . ../interactScripts/transitions/"$right".sh


elif [ "${!up}" == "transition" ]
then
        . ../interactScripts/transitions/"$up".sh


elif [ "${!down}" == "transition" ]
then
        . ../interactScripts/transitions/"$down".sh
fi
}


function playerType(){
#this function passes the input as a command

tput cup $(( frameHeight + 1 ))

printf "%0.s* " {1..22}
printf "\n$ "

stty echo
visible

read cmd
echo

stty -echo
invisible

if [ `echo $cmd | grep "cd " | wc -l` != 0 ]; then

cmd=""

echo "cd is not allowed in this LARK"

fi

if [ `echo $cmd | grep "rmdir " | wc -l` != 0 ]; then

cmd=""

echo "rmdir is not allowed in this LARK"

fi

if [ `echo $cmd | grep cat | wc -l` != 0 ] && [ `$cmd | wc -l` -gt $(( `tput lines` - 28 )) ]; then
textBox
printf "The file is too big to cat."
textBoxLine2
printf "Increase number of terminal lines"
textBoxLine3
printf "or don't cat that file."
textBoxWait
continue
fi

if [ `echo $cmd | grep "echo" | wc -l` == 1 ] && [ `echo $cmd | grep ">" | wc -l` == 1 ]; then

cmdLeft=`echo $cmd | grep -o -P '.{0,100}>' | cut -c6-`
cmdLeft=${cmdLeft%>}
cmdRight=`echo $cmd | grep -o -P '>.{0,100}' | cut -c3-`

echo "$cmdLeft" > "$cmdRight"

cmd=""

fi

if [ "$cmd" == "rm myInventory/Trash" ]; then
talkTrash=2
fi

echo "`$cmd`"
echo
read -s -p "Press enter to continue" typePrompt


tput cup $frameHeight
tput ed

if [ `echo $cmd | grep "echo" | wc -l` != 0 ]; then
tutorialEcho=1
fi
}


function readInput(){
read -s -N 1 input

case "$input" in
a)
        left
        ;;

A)
	left;left;left;left;left;left;left;left
	;;

d)
        right
        ;;

D)
	right;right;right;right;right;right;right;right;
	;;

w)
        up
        ;;

W)
	up;up;up;up;up;up;up;up;
	;;

s)
        down
        ;;

S)
	down;down;down;down;down;down;down;down;
	;;

q)
	quit
        ;;

e|E)
	interact
	;;

t|$)
	playerType
	;;

#DEV COMMAND TAKE THIS OUT
#r)
#	declare -g $up=""
esac
}



function printTitle(){
echo " ___ ___  ____            "
echo "|   |   |/    |           "
echo "| _   _ |  o  |           "
echo "|  \\_/  |     |           "
echo "|   |   |  _  |           "
echo "|   |   |  |  |           "
echo "|___|___|__|__|           "
echo "                          "
echo " _      ____ ____  __  _  "
echo "| |    /    |    \\|  |/ ] "
echo "| |   |  o  |  D  )  ' /  "
echo "| |___|     |    /|    \\  "
echo "|     |  _  |    \\|     | "
echo "|     |  |  |  .  \\  .  | "
echo "|_____|__|__|__|\\_|__|\\_| "
echo "                          "
echo "                ___ __ __ "
echo "               /  _]  |  |"
echo "              /  [_|  |  |"
echo "             |    _]  ~  |"
echo "             |   [_|___, |"
echo "             |     |     |"
echo "             |_____|____/ "
}


function printEnd(){
echo " ______  __ __    ___ "
echo "|      ||  |  |  /  _]"
echo "|      ||  |  | /  [_ "
echo "|_|  |_||  _  ||    _]"
echo "  |  |  |  |  ||   [_ "
echo "  |  |  |  |  ||     |"
echo "  |__|  |__|__||_____|"
echo "                      "
echo "   ___  ____   ___    "
echo "  /  _]|    \\ |   \\   "
echo " /  [_ |  _  ||    \\  "
echo "|    _]|  |  ||  D  | "
echo "|   [_ |  |  ||     | "
echo "|     ||  |  ||     | "
echo "|_____||__|__||_____| "
}
