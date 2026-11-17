#!/bin/bash
# Проверка числа с помощью условных операторов

read -p "Введите число: " BASH_COMPARISON_NUMBER

if [ "$BASH_COMPARISON_NUMBER" -gt 10 ]; then
    echo "Число больше 10"
elif [ "$BASH_COMPARISON_NUMBER" -eq 10 ]; then
    echo "Число равно 10"
else
    echo "Число меньше 10"
fi
