#!/bin/bash
# Простой калькулятор

read -p "Первое число: " a
read -p "Второе число: " b
read -p "Операция (+, -, *, /, %): " op

# case — как switch в других языках
case "$op" in
    +)
        echo "$a + $b = $((a + b))"
        ;;
    -)
        echo "$a - $b = $((a - b))"
        ;;
    \*)
        echo "$a * $b = $((a * b))"
        ;;
    /)
        if [ "$b" -ne 0 ]; then
            echo "$a / $b = $((a / b))"
        else
            echo "Ошибка: деление на ноль"
        fi
        ;;
    %)
        if [ "$b" -ne 0 ]; then
            echo "$a % $b = $((a % b))"
        else
            echo "Ошибка: деление на ноль"
        fi
        ;;
    *)
        echo "Неизвестная операция: $op"
        ;;
esac
