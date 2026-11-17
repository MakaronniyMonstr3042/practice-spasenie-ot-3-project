#!/bin/bash
# Работа с переменными

# Объявление переменных
BASH_PRACTICE_NAME="Иван"
BASH_PRACTICE_AGE=25
BASH_PRACTICE_DIRECTORY=$(pwd)

# Использование переменных
echo "Имя: $BASH_PRACTICE_NAME"
echo "Возраст: $BASH_PRACTICE_AGE"
echo "Директория: $BASH_PRACTICE_DIRECTORY"

# Переменные окружения
echo "Домашняя директория: $HOME"
echo "Текущая оболочка: $SHELL"
