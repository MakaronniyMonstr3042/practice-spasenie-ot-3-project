#!/bin/bash
# Демонстрация отладки скриптов

# Включение отладки и проверки ошибок
set -x
set -e
set -u

# Пример работы переменных и команд
debug_name="Bash"
debug_number=10

echo "Название: $debug_name"
echo "Число: $debug_number"

result=$((debug_number * 2))
echo "Результат: $result"

# Выключение отладки
set +x

echo "Отладка завершена"
