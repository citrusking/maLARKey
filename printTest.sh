#!/bin/bash

stty -echo

echo first
sleep 1
echo second

stty echo
#echo -e "\033[2K" #clears line with escape sequence
read -t 0.1 -n 1000 discard
