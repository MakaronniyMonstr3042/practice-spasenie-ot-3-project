#!/bin/bash
# Расчёт годового дохода по вкладу

read -p "Введите сумму вклада: " summa_vklada
read -p "Введите процентную ставку: " stavka_procentov

# Проверяем введённые значения
if ! [[ "$summa_vklada" =~ ^[0-9]+$ ]] ||
   ! [[ "$stavka_procentov" =~ ^[0-9]+$ ]]; then
    echo "Ошибка: введите целые неотрицательные числа."
    exit 1
fi

# Рассчитываем доход за один год
godovoy_dohod=$((summa_vklada * stavka_procentov / 100))
itogovaya_summa=$((summa_vklada + godovoy_dohod))

echo "--- Результаты ---"
echo "Сумма вклада: $summa_vklada руб."
echo "Годовой доход: $godovoy_dohod руб."
echo "Итоговая сумма: $itogovaya_summa руб."
