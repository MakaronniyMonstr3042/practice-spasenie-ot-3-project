#!/usr/bin/env bash

# Проверяем наличие аргумента
if [[ $# -ne 1 ]]; then
    echo "Ошибка: укажите одно число."
    echo "Использование: ./check_number.sh <число>"
    exit 1
fi

# Сохраняем переданное число
chislo_dlya_opredeleniya_ego_sudby="$1"

# Проверяем корректность значения
shablon_chisla_iz_matematicheskoy_vselennoy='^[-+]?([0-9]+([.][0-9]*)?|[.][0-9]+)$'

if [[ ! "$chislo_dlya_opredeleniya_ego_sudby" =~ $shablon_chisla_iz_matematicheskoy_vselennoy ]]; then
    echo "Ошибка: аргумент должен быть числом."
    exit 1
fi

# Определяем тип числа
LC_NUMERIC=C awk -v chislo="$chislo_dlya_opredeleniya_ego_sudby" 'BEGIN {
    if (chislo > 0)
        print "Число " chislo " является положительным"
    else if (chislo < 0)
        print "Число " chislo " является отрицательным"
    else
        print "Число " chislo " является нулём"
}'
