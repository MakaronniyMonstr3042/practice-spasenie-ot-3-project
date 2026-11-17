#!/bin/bash
# Игра "Угадай число"

secretno_iz_zagadannoy_vselennoy=37

read -p "Угадайте загаданное число: " otvet_uchastnika

# Проверяем корректность ввода
if ! [[ "$otvet_uchastnika" =~ ^-?[0-9]+$ ]]; then
    echo "Ошибка: введите целое число."
    exit 1
fi

# Сравниваем ответ с загаданным числом
if (( otvet_uchastnika == secretno_iz_zagadannoy_vselennoy )); then
    echo "Победа!"
else
    echo "Не угадал, было $secretno_iz_zagadannoy_vselennoy"
fi
