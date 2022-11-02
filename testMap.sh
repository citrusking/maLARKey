#!/bin/bash

. funcFile.sh

#function creates the map using playerX as an argument to determine how to print
function mapTest(){
printf "* * * * * * *\n"

printf "*"

lineElement=0

for insideSpace in {1..11}
do
  if [ $(( $insideSpace % 2 )) != 0 ]
	then
	  printf " "
  fi

  if [ $(( $insideSpace % 2 )) == 0 ]
        then
          printf "${line[$lineElement]}"
	  lineElement=$(( $lineElement + 1 ))
  fi

done

printf "*\n"

printf "* * * * * * *\n"
}

function left(){
playerX=$(( $playerX - 1 ))
line[$playerX]="O"
line[$(( $playerX + 1 ))]="x"
}

function right(){
playerX=$(( $playerX + 1 ))
line[$playerX]="O"
line[$(( $playerX - 1 ))]="x"
}

function readInput(){
read -s -N 1 -p "Please press A to move left, D to move right, or e to exit" input

if [ "$input" == "a" ]; then
	left
fi

if [ "$input" == "d" ]; then
	right
fi

if [ "$input" == "e" ]; then
	printf "\n"
	exit 0
fi

}

clear
playerX=3
line=("x" "x" "O" "x" "x") #5 spaces on the line

while [ 1 == 1 ]
do
clear
mapTest
readInput
done
