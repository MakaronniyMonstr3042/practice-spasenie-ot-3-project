#!/bin/bash
# Определение и использование функций

# Функция приветствия
greet_user() {
    local bash_greeting_name=$1
    echo "Привет, $bash_greeting_name!"
    return 0
}

# Функция проверки файла
check_file() {
    if [ -f "$1" ]; then
        return 0
    else
        return 1
    fi
}

# Вызов функций
greet_user "Анна"

if check_file "/etc/hosts"; then
    echo "Файл существует"
else
    echo "Файл не найден"
fi
