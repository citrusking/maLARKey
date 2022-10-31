#!/bin/bash
#this is a file to contain functions used throughout the game

function blank(){
printf "%0.s " {1..73}
}

function fullBlank(){
printf "%0.s " {1..75}
printf "\n"
}

function borderBlank(){
printf "*"
blank
printf "*"
printf "\n"
}
