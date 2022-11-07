#!/bin/bash

clear
for i in {1..10}
do
tput setab $i
printf "           "
tput setab 0
tput setaf $i
printf "  $i\n"
done

#IMPORTANT NOTE: the putty preset colors change the terminal's defined colors
#1 is usually red, but I made it pink

