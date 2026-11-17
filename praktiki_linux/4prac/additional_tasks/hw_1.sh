#!/bin/bash
# Расчёт площади и объёма комнаты

read -p "Введите длину комнаты: " dlina_komnaty
read -p "Введите ширину комнаты: " shirina_komnaty
read -p "Введите высоту комнаты: " vysota_komnaty

# Проверяем введённые значения
if ! [[ "$dlina_komnaty" =~ ^[1-9][0-9]*$ ]] ||
   ! [[ "$shirina_komnaty" =~ ^[1-9][0-9]*$ ]] ||
   ! [[ "$vysota_komnaty" =~ ^[1-9][0-9]*$ ]]; then
    echo "Ошибка: введите положительные целые числа."
    exit 1
fi

# Выполняем вычисления
ploshchad_pola=$((dlina_komnaty * shirina_komnaty))
ploshchad_sten=$((2 * (dlina_komnaty + shirina_komnaty) * vysota_komnaty))
obyom_komnaty=$((dlina_komnaty * shirina_komnaty * vysota_komnaty))

echo "--- Результаты ---"
echo "Площадь пола: $ploshchad_pola"
echo "Площадь стен: $ploshchad_sten"
echo "Объём комнаты: $obyom_komnaty"
