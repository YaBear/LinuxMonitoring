#!/bin/bash

. ./functions.sh
. ./colors.sh
. ./colors.cfg

# Default color is purple
if [ -z "$column1_background" ]; then
    column1_background=5
    color_first_back_default=1
fi
# Default color is white
if [ -z "$column1_font_color" ]; then
    column1_font_color=1
    color_first_font_default=1
fi
# Default color is black
if [ -z "$column2_background" ]; then
    column2_background=6
    color_second_back_default=1
fi
# Default color is red
if [ -z "$column2_font_color" ]; then
    column2_font_color=2
    color_second_font_default=1
fi

if [[ $column1_background = $column1_font_color || $column2_background = $column2_font_color ]]; then
    echo "Цвет фона и цвет шрифта в столбце не должен совпадать, выполните скрипт еще раз с верными параметрами в .cfg файле"
    exit -1
fi

color_first_back=$(set_color_back $column1_background)
color_first_font=$(set_color_font $column1_font_color)
color_second_back=$(set_color_back $column2_background)
color_second_font=$(set_color_font $column2_font_color)

HOSTNAME
TIMEZONE
USER
OS
DATE
UPTIME
UPTIME_SEC
IP
MASK
GATEWAY
RAM_TOTAL
RAM_USED
RAM_FREE
SPACE_ROOT
SPACE_ROOT_USED
SPACE_ROOT_FREE

PRINT_COLORS_TABLE