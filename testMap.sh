#!/bin/bash

#function creates the map by using data from the line array
function mapTest(){
printf "* * * * * * *\n" #top border
for (( i = 5; i > 0; i-- ))
do
	printLine $i
done
printf "* * * * * * *\n" #bottom border
}

function printLine(){
lineX=0

printf "*" #side border

#since the horizontal text is not spaced the same as newlines, there is an extra space between each character
for insideSpace in {1..11}
do
  if [ $(( $insideSpace % 2 )) != 0 ]
	then
	  printf " "
  fi

  if [ $(( $insideSpace % 2 )) == 0 ]
        then
	  case $1 in  # $1 (first arg) should be playerY

		1)
	          printf "${line1[$lineX]}"
	  	  lineX=$(( $lineX + 1 ))
		  ;;

		2)
                  printf "${line2[$lineX]}"
                  lineX=$(( $lineX + 1 ))
                  ;;

		3)
                  printf "${line3[$lineX]}"
                  lineX=$(( $lineX + 1 ))
                  ;;

		4)
                  printf "${line4[$lineX]}"
                  lineX=$(( $lineX + 1 ))
                  ;;

		5)
                  printf "${line5[$lineX]}"
                  lineX=$(( $lineX + 1 ))
                  ;;

	  esac
  fi
done

printf "*\n" #side border
}

#left shifts playerX left and replaces the elements
function left(){
case $playerY in
1)
	line1[$(( $playerX - 1 ))]=" "  #because indices start at 0
	line1[$(( $playerX - 2 ))]="O"  #because indices start at 0
	;;
2)
        line2[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line2[$(( $playerX - 2 ))]="O"  #because indices start at 0
        ;;
3)
        line3[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line3[$(( $playerX - 2 ))]="O"  #because indices start at 0
        ;;
4)
        line4[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line4[$(( $playerX - 2 ))]="O"  #because indices start at 0
        ;;
5)
        line5[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line5[$(( $playerX - 2 ))]="O"  #because indices start at 0
        ;;
esac
playerX=$(( $playerX - 1 ))
}

#right does what left does but obviously shifts right instead
function right(){
case $playerY in
1)
        line1[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line1[$(( $playerX - 0 ))]="O"  #because indices start at 0
        ;;
2)
        line2[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line2[$(( $playerX - 0 ))]="O"  #because indices start at 0
        ;;
3)
        line3[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line3[$(( $playerX - 0 ))]="O"  #because indices start at 0
        ;;
4)
        line4[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line4[$(( $playerX - 0 ))]="O"  #because indices start at 0
        ;;
5)
        line5[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line5[$(( $playerX - 0 ))]="O"  #because indices start at 0
        ;;
esac
playerX=$(( $playerX + 1 ))
}

#up moves the player up one
function up(){
case $playerY in
1)
        line1[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line2[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
2)
        line2[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line3[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
3)
        line3[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line4[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
4)
        line4[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line5[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
5)
        line5[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line6[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
esac
playerY=$(( $playerY + 1 ))
}

#down moves the player down one
function down(){
case $playerY in
1)
        line1[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line0[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
2)
        line2[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line1[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
3)
        line3[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line2[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
4)
        line4[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line3[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
5)
        line5[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line4[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
esac
playerY=$(( $playerY - 1 ))
}


#readInput prompts, reads an input, and calls the function corresponding to the input
function readInput(){
read -s -N 1 -p "Use WASD to move, or E to exit" input

case "$input" in
a)	
	left
	;;

d)	
	right
	;;

w)
	up
	;;

s)
	down
	;;

e)
	clear
	exit 0
	;;
esac
}

clear
playerX=3
playerY=1
line5=(" " " " " " " " " ")
line4=(" " " " " " " " " ")
line3=(" " " " " " " " " ")
line2=(" " " " " " " " " ")
line1=(" " " " "O" " " " ") #line is initialized with the player in the third position


mapTest

while [ 1 == 1 ]
do
readInput
clear
mapTest
done
