#!/bin/bash
#print row of *
printf "%0.s*" {1..75}
printf "\n"

#print empty spaces with borders
for i in {1..10}
do
printf "*"; printf "%0.s " {1..73}; printf "*"
printf "\n"
done

#print the player character
printf "*"; printf "%0.s " {1..36}; printf "O"; printf "%0.s " {1..36}; printf "*"
printf "\n"

#print empty spaces with borders
for i in {1..10}
do
printf "*"; printf "%0.s " {1..73}; printf "*"
printf "\n"
done

#print row of *
printf "%0.s*" {1..75}
printf "\n"

#create space for input line
echo

read -s -N 1 cmd

echo "you pressed $cmd"
