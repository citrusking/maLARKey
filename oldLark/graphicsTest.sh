#!/bin/bash

clear

#bring in functions
. funcFile.sh

#print row of *
border

#print empty spaces with borders
for i in {1..14}
do
borderBlank
done

#print line of text in the middle
printf "*"; printf "%0.s " {1..24}; printf "LARK TITLE"; printf "%0.s " {1..27}; printf "*"
printf "\n"

#print empty spaces with borders
for i in {1..15}
do
borderBlank
done

#print row of *
border
