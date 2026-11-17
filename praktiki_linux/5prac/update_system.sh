#!/bin/bash
# Скрипт для автоматического обновления системы

echo "Начало обновления системы: $(date)"

# Определяем пакетный менеджер системы
if command -v dnf >/dev/null 2>&1; then
    sudo dnf upgrade --refresh -y
elif command -v apt >/dev/null 2>&1; then
    sudo apt update && sudo apt upgrade -y
else
    echo "Не удалось определить пакетный менеджер."
    exit 1
fi

echo "Обновление завершено: $(date)"
