#!/bin/bash
# Ввод данных от пользователя

echo "Введите ваше имя:"
read BASH_INPUT_USERNAME
echo "Привет, $BASH_INPUT_USERNAME!"

# Чтение с подсказкой
read -p "Введите ваш возраст: " BASH_INPUT_AGE
echo "Вам $BASH_INPUT_AGE лет"

# Скрытый ввод
read -s -p "Введите пароль: " BASH_SECRET_INPUT
echo
echo "Пароль принят"
