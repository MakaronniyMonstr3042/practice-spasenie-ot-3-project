#!/bin/bash
# Демонстрация цикла while

# Чтение файла построчно
while read line; do
    echo "Строка: $line"
done < /etc/passwd

# Цикл с условием
BASH_SYNTAX_COUNTER=1

while [ "$BASH_SYNTAX_COUNTER" -le 5 ]; do
    echo "Счетчик: $BASH_SYNTAX_COUNTER"
    ((BASH_SYNTAX_COUNTER++))
done
