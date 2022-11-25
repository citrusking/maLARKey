#!/bin/bash
#this is a file to contain functions used throughout the game

#map building functions build a 30 width line of equally spaced characters
#generally, the game will be made using 30 x 30 maps

#fullBlank creates a complete line of blank spaces, to separate things from the map
function fullBlank(){
printf "%0.s " {1..21}
printf "\n"
}

#borderBlank creates the borders and the blank spaces between them
function borderBlank(){
printf "*"
printf "%0.s " {1..19}
printf "*"
printf "\n"
}

#border creates the top and bottom borders at equal spacing as the side borders, done by adding spaces
function border(){
for i in {1..21}
do
  if [ $(( $i % 2 )) != 0 ]
	then
	  printf "*"
  elif [ $(( $i % 2 )) == 0 ]
	then
	  printf " "
  fi
done
printf "\n"
}



function printLine(){
lineX=0

printf "*" #side border

for insideSpace in {1..19}
do
  if [ $(( $insideSpace % 2 )) != 0 ]
        then
          printf " "
  fi

  if [ $(( $insideSpace % 2 )) == 0 ]
        then
          case $1 in  # $1 (first arg) is the line number

                1)
                  printf "${line1[$lineX]}"
                  ;;

                2)
                  printf "${line2[$lineX]}"
                  ;;

                3)
                  printf "${line3[$lineX]}"
                  ;;

                4)
                  printf "${line4[$lineX]}"
                  ;;

                5)
                  printf "${line5[$lineX]}"
		  ;;

                6)
                  printf "${line6[$lineX]}"
                  ;;

                7)
                  printf "${line7[$lineX]}"
                  ;;

                8)
                  printf "${line8[$lineX]}"
                  ;;

                9)
                  printf "${line9[$lineX]}"
                  ;;

	  esac
  lineX=$(( $lineX + 1 ))
  fi

done

printf "*\n" #side border
}



function printMap(){
border #top border
for (( i = 9; i > 0; i-- ))
do
        printLine $i
done
border #bottom border
}



function left(){
if [ $playerX != 1 ]; then
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
6)
        line6[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line6[$(( $playerX - 2 ))]="O"  #because indices start at 0
        ;;
7)
        line7[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line7[$(( $playerX - 2 ))]="O"  #because indices start at 0
        ;;
8)
        line8[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line8[$(( $playerX - 2 ))]="O"  #because indices start at 0
        ;;
9)
        line9[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line9[$(( $playerX - 2 ))]="O"  #because indices start at 0
        ;;

esac
playerX=$(( $playerX - 1 ))
fi
}


function right(){
if [ $playerX != 9 ]; then
case $playerY in
1)
        line1[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line1[$(( $playerX ))]="O"  #because indices start at 0
        ;;
2)
        line2[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line2[$(( $playerX ))]="O"  #because indices start at 0
        ;;
3)
        line3[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line3[$(( $playerX ))]="O"  #because indices start at 0
        ;;
4)
        line4[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line4[$(( $playerX ))]="O"  #because indices start at 0
        ;;
5)
        line5[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line5[$(( $playerX ))]="O"  #because indices start at 0
        ;;
6)
        line6[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line6[$(( $playerX ))]="O"  #because indices start at 0
        ;;
7)
        line7[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line7[$(( $playerX ))]="O"  #because indices start at 0
        ;;
8)
        line8[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line8[$(( $playerX ))]="O"  #because indices start at 0
        ;;
9)
        line9[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line9[$(( $playerX ))]="O"  #because indices start at 0
        ;;

esac
playerX=$(( $playerX + 1 ))
fi
}


function up(){
if [ $playerY != 9 ]; then
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
6)
        line6[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line7[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
7)
        line7[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line8[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
8)
        line8[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line9[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;

esac
playerY=$(( $playerY + 1 ))
fi
}



function down(){
if [ $playerY != 1 ]; then
case $playerY in
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
6)
        line6[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line5[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
7)
        line7[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line6[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
8)
        line8[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line7[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;
9)
        line9[$(( $playerX - 1 ))]=" "  #because indices start at 0
        line8[$(( $playerX - 1 ))]="O"  #because indices start at 0
        ;;

esac
playerY=$(( $playerY - 1 ))
fi
}


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

