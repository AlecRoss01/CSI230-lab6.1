!/bin/bash
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
default='\033[0m'

read -p "What is your favorite color (red, green, blue, yellow, or magenta)? " color
color=${color^^}

#if [ -z ${color} ]; then
#       selected_color=$default
#       echo"You didn't enter anything!"
#       exit 1
#else
#       echo "$color selected"
#       if [ ${color} = "RED" ]; then
#               selected_color=$red
#       elif [ ${color} = "BLUE" ]; then
 #               selected_color=$blue
#       elif [ ${color} = "GREEN" ]; then
 #               selected_color=$green
#       elif [ ${color} = "YELLOW" ]; then
 #               selected_color=$yellow
#       elif [ ${color} = "MAGENTA" ]; then
 #               selected_color=$magenta
#       else
#               selected_color=$default
#               echo "Not a valid color"
#               exit 2
#       fi
#fi
case "$color" in
        RED)    selected_color=$red
                ;;
        GREEN)  selected_color=$green
                ;;
        BLUE)   selected_color=$blue
                ;;
        YELLOW) selected_color=$yellow
                ;;
        MAGENTA)selected_color=$magenta
                ;;
        "")     selected_color=$default
                echo "You didn't enter anything"
                exit 1
                ;;
        *)      selected_color=$default
                echo "Not a valid color"
                exit 2
                ;;
esac
echo -e "${selected_color}Your selected color is ${color}${default}"

