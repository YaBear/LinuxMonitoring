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

function print_color_font {
    if [ $1 = 1 ]; then
        echo "white"
    elif [ $1 = 2 ]; then
        echo "red"
    elif [ $1 = 3 ]; then
        echo "green"
    elif [ $1 = 4 ]; then
        echo "blue"
    elif [ $1 = 5 ]; then
        echo "purple"
    elif [ $1 = 6 ]; then
        echo "black"
    fi
}

function print_color_back {
    if [ $1 = 1 ]; then
        echo "white"
    elif [ $1 = 2 ]; then
        echo "red"
    elif [ $1 = 3 ]; then
        echo "green"
    elif [ $1 = 4 ]; then
        echo "blue"
    elif [ $1 = 5 ]; then
        echo "purple"
    elif [ $1 = 6 ]; then
        echo "black"
    fi
}

function PRINT_COLORS_TABLE {
    echo -en "\nColumn 1 background = "
    if [ -z "$color_first_back_default" ]; then
        echo "$column1_background ($(print_color_back $column1_background))"
    else
        echo "default ($(print_color_back $column1_background))"
    fi
    echo -n "Column 1 font color = "
    if [ -z "$color_first_font_default" ]; then
        echo "$column1_font_color ($(print_color_font $column1_font_color))"
    else
        echo "default ($(print_color_font $column1_font_color))"
    fi
    echo -n "Column 2 background = "
    if [ -z "$color_first_back_default" ]; then
        echo "$column2_background ($(print_color_back $column2_background))"
    else
        echo "default ($(print_color_back $column2_background))"
    fi
    echo -n "Column 2 font color = "
    if [ -z "$color_first_font_default" ]; then
        echo "$column2_font_color ($(print_color_font $column2_font_color))"
    else
        echo "default ($(print_color_font $column2_font_color))"
    fi
}