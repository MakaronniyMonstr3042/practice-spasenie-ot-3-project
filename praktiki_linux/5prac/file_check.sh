#!/bin/bash
# Проверка существования и доступности файла

BASH_CHECK_FILE="/etc/passwd"

if [ -f "$BASH_CHECK_FILE" ]; then
    echo "Файл $BASH_CHECK_FILE существует"

    if [ -r "$BASH_CHECK_FILE" ]; then
        echo "Файл доступен для чтения"
    fi
else
    echo "Файл не существует"
fi
