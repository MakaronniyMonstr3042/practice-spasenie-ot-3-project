#!/bin/bash
# Проверка делимости числа

chislo_dlya_proverki_razdelimosti=""

read -r -p "Введите число N: " chislo_dlya_proverki_razdelimosti

# Проверяем корректность ввода
if ! [[ "$chislo_dlya_proverki_razdelimosti" =~ ^-?[0-9]+$ ]]; then
    echo "Ошибка: необходимо ввести целое число."
    exit 1
fi

# Проверяем чётность
if (( chislo_dlya_proverki_razdelimosti % 2 == 0 )); then
    echo "Число чётное."
else
    echo "Число нечётное."
fi

# Проверяем делимость на 3
if (( chislo_dlya_proverki_razdelimosti % 3 == 0 )); then
    echo "Число делится на 3."
else
    echo "Число не делится на 3."
fi

# Проверяем делимость на 5
if (( chislo_dlya_proverki_razdelimosti % 5 == 0 )); then
    echo "Число делится на 5."
else
    echo "Число не делится на 5."
fi
