#!/bin/bash

# Проверяем, является ли параметр числом, проверяем количество параметров (не 0 и не больше 1)
if [[ $1 =~ ^[0-9]+$ || $# == 0 || $# > 1 ]]; then
    echo "Incorrect input"
else
    echo $1
fi