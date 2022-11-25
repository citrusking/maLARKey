#!/bin/bash

#ANSI escape codes are used just like \n, and follow the format \033[...m

#Return to defaults:

#Return all to default: 0
#Return font to defaul: 10
#Return to default BG: 49

#Font codes:

#Underline: 4
#Underline Off: 24
#Crossout: 9
#Crossout Off: 29

#BG color codes:

#Black BG: 40
#Red BG: 41
#Green BG: 42
#Orange BG: 43
#Blue BG: 44
#Magenta BG: 45
#Cyan BG: 46
#Light Gray BG: 47
#Dark Gray BG: 100
#Light Red BG: 101
#Light Green BG: 102
#Yellow BG: 103
#Light Blue BG: 104
#Light Purple BG: 105
#Teal BG: 106
#White BG: 107

printf "\033[41m Red \033[40m\n"
printf "\033[42m Green \033[40m\n"
printf "\033[43m Orange \033[40m\n"
printf "\033[44m Blue \033[40m\n"
printf "\033[45m Magenta \033[40m\n"
printf "\033[46m Cyan \033[40m\n"
printf "\033[47m LGray \033[40m\n"
printf "\033[100m DGray \033[40m\n"
printf "\033[101m LRed \033[40m\n"
printf "\033[102m LGreen \033[40m\n"
printf "\033[103m Yellow \033[40m\n"
printf "\033[104m LBlue \033[40m\n"
printf "\033[105m LPurple \033[40m\n"
printf "\033[106m Teal \033[40m\n"
printf "\033[107m White \033[40m\n"

printf "\n\033[4m Underline \033[24m\n"
