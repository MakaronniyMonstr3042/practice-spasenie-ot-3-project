#!/usr/bin/env bash

# Проверяем наличие аргумента
if [[ $# -ne 1 ]]; then
    echo "Ошибка: укажите путь к директории."
    echo "Использование: ./list_files.sh <путь>"
    exit 1
fi

# Получаем путь к директории
put_k_khranilishchu_faylov="$1"

# Проверяем существование директории
if [[ ! -d "$put_k_khranilishchu_faylov" ]]; then
    echo "Ошибка: директория '$put_k_khranilishchu_faylov' не существует."
    exit 1
fi

# Находим все TXT-файлы
spisok_tekstovykh_sokrovishch=()
mapfile -d '' -t spisok_tekstovykh_sokrovishch < <(
    find "$put_k_khranilishchu_faylov" -maxdepth 1 -type f -name '*.txt' -print0
)

# Проверяем наличие найденных файлов
if [[ ${#spisok_tekstovykh_sokrovishch[@]} -eq 0 ]]; then
    echo "В директории '$put_k_khranilishchu_faylov' нет TXT-файлов."
    exit 0
fi

# Выводим названия файлов и их размеры
echo "Найдены .txt файлы в $put_k_khranilishchu_faylov:"

for tekstovoe_sokrovishche in "${spisok_tekstovykh_sokrovishch[@]}"; do
    ves_fayla_v_ponyatnom_vide=$(du -h -- "$tekstovoe_sokrovishche" | cut -f1)
    printf -- "- %s (%s)\n" "$(basename -- "$tekstovoe_sokrovishche")" "$ves_fayla_v_ponyatnom_vide"
done
