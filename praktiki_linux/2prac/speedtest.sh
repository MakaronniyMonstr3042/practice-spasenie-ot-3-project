#!/bin/bash
# Приблизительный тест скорости сети

echo "=== Тест скорости сети ==="
echo "Измеряем задержку..."

# Проверяем ping до Google DNS
ping_time=$(ping -c 3 8.8.8.8 | grep "avg" | grep -o "[0-9.]*" | tail -1)

if [ -n "$ping_time" ]; then
    echo "Задержка (ping): ${ping_time}ms"
else
    echo "Не удалось измерить задержку"
fi

echo
echo "Измеряем скорость скачивания..."
# Скачиваем тестовый файл и замеряем время
start=$(date +%s%N)
curl -s -o /tmp/speedtest https://speedtest.tele2.net/1MB.zip
end=$(date +%s%N)
duration=$((($end - $start)/1000000000))

if [ $duration -gt 0 ]; then
    speed=$((8 / $duration))  # 8MB = 8 мегабайт
    echo "Скорость: примерно ${speed} MB/s"
fi

rm -f /tmp/speedtest
