#!/bin/bash
# Простой скрипт резервного копирования

BASH_BACKUP_DIR="/home/backup"
BASH_SOURCE_DIR="/home/user/documents"
BASH_BACKUP_DATE=$(date +%Y-%m-%d)

if [ ! -d "$BASH_SOURCE_DIR" ]; then
    echo "Ошибка: исходная директория не найдена!"
    exit 1
fi

if [ ! -d "$BASH_BACKUP_DIR" ]; then
    mkdir -p "$BASH_BACKUP_DIR"
fi

tar -czf "$BASH_BACKUP_DIR/backup_$BASH_BACKUP_DATE.tar.gz" "$BASH_SOURCE_DIR"

echo "Бэкап создан: $BASH_BACKUP_DIR/backup_$BASH_BACKUP_DATE.tar.gz"
