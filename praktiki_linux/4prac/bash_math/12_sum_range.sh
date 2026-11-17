#!/bin/bash
# Вычисление произведения чисел от 1 до N (факториал)

read -p "Введите N: " n

prod=1
i=1

while [ "$i" -le "$n" ]; do
    prod=$((prod * i))
    i=$((i + 1))
done

echo "Произведение чисел от 1 до $n = $prod"
