#!/usr/bin/env bash

# Запрашиваем два числа и математическую операцию
read -r -p "Введите первое число: " chislo_iz_pervogo_izmereniya
read -r -p "Введите второе число: " chislo_iz_vtorogo_izmereniya
read -r -p "Введите операцию (+, -, *, /): " znak_matematicheskogo_portala

# Проверяем корректность введённых чисел
shablon_chisla_iz_matematicheskoy_vselennoy='^[-+]?([0-9]+([.][0-9]*)?|[.][0-9]+)$'

if [[ ! "$chislo_iz_pervogo_izmereniya" =~ $shablon_chisla_iz_matematicheskoy_vselennoy ]] ||
   [[ ! "$chislo_iz_vtorogo_izmereniya" =~ $shablon_chisla_iz_matematicheskoy_vselennoy ]]; then
    echo "Ошибка: введены некорректные числа."
    exit 1
fi

# Проверяем выбранную операцию
case "$znak_matematicheskogo_portala" in
    "+"|"-"|"*"|"/") ;;
    *)
        echo "Ошибка: неизвестная операция."
        exit 1
        ;;
esac

# Проверяем деление на ноль
if [[ "$znak_matematicheskogo_portala" == "/" ]] &&
   awk -v chislo="$chislo_iz_vtorogo_izmereniya" 'BEGIN { exit !(chislo == 0) }'; then
    echo "Ошибка: делить на ноль нельзя."
    exit 1
fi

# Выполняем вычисление
LC_NUMERIC=C awk \
    -v pervoe="$chislo_iz_pervogo_izmereniya" \
    -v vtoroe="$chislo_iz_vtorogo_izmereniya" \
    -v operaciya="$znak_matematicheskogo_portala" \
    'BEGIN {
        if (operaciya == "+") otvet = pervoe + vtoroe
        else if (operaciya == "-") otvet = pervoe - vtoroe
        else if (operaciya == "*") otvet = pervoe * vtoroe
        else if (operaciya == "/") otvet = pervoe / vtoroe

        printf "Результат: %s %s %s = %.10g\n", pervoe, operaciya, vtoroe, otvet
    }'
