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

#print lines of text in the middle
printf "*"; printf "%0.s " {1..30}; printf "LARK TITLE"; printf "%0.s " {1..33}; printf "*"
printf "\n"
printf "*"; printf "%0.s " {1..29}; printf "SECOND  LINE"; printf "%0.s " {1..32}; printf "*"
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
