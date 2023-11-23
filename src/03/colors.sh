font_white="\033[37m"
font_black="\033[30m"
font_red="\033[31m"
font_green="\033[32m"
font_blue="\033[34m"
font_purple="\033[35m"

back_white="\033[47m"
back_black="\033[40m"
back_red="\033[41m"
back_green="\033[42m"
back_blue="\033[44m"
back_purple="\033[45m"

clear_color="\033[0m"

function set_color_font {
    if [ $1 = 1 ]; then
        echo "${font_white}"
    elif [ $1 = 2 ]; then
        echo "${font_red}"
    elif [ $1 = 3 ]; then
        echo "${font_green}"
    elif [ $1 = 4 ]; then
        echo "${font_blue}"
    elif [ $1 = 5 ]; then
        echo "${font_purple}"
    elif [ $1 = 6 ]; then
        echo "${font_black}"
    fi
}

function set_color_back {
    if [ $1 = 1 ]; then
        echo "${back_white}"
    elif [ $1 = 2 ]; then
        echo "${back_red}"
    elif [ $1 = 3 ]; then
        echo "${back_green}"
    elif [ $1 = 4 ]; then
        echo "${back_blue}"
    elif [ $1 = 5 ]; then
        echo "${back_purple}"
    elif [ $1 = 6 ]; then
        echo "${back_black}"
    fi
}