#!/bin/bash
# Перевод секунд в часы, минуты, секунды

# Если аргумент не передан, запрашиваем число
if [ -z "$1" ]; then
    read -p "Введите количество секунд: " total
else
    total="$1"
fi

# Выполняем вычисления
hours=$((total / 3600))
remainder=$((total % 3600))
minutes=$((remainder / 60))
seconds=$((remainder % 60))

echo "---"
echo "$total секунд = $hours ч $minutes мин $seconds с"
