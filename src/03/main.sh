#!/bin/bash

. ./functions.sh
. ./colors.sh

color_first=$1
color_second=$2
color_third=$3
color_fourth=$4

for (( i=1; i <= 4; i++ ))
do
    if [[ $1 < 0 || $1 > 6 ]]; then
        echo "Допустимые цифры для цветов 1-6, выполните скрипт еще раз с верными параметрами"
        exit -1
    fi
shift
done

if [[ $color_first = $color_second || $color_third = $color_fourth ]]; then
    echo "Цвет фона и цвет шрифта в столбце не должен совпадать, выполните скрипт еще раз с верными параметрами"
    exit -1
fi

color_first_back=$(set_color_back $color_first)
color_first_font=$(set_color_font $color_second)
color_second_back=$(set_color_back $color_third)
color_second_font=$(set_color_font $color_fourth)

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