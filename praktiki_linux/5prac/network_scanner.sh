#!/bin/bash
# Простой сканер портов своей локальной сети

BASH_SYNTAX_TARGET="192.168.1.1"

echo "Сканирование портов на $BASH_SYNTAX_TARGET"

for BASH_SYNTAX_PORT in 22 80 443 8080; do
    if nc -z -w 1 "$BASH_SYNTAX_TARGET" "$BASH_SYNTAX_PORT" 2>/dev/null; then
        echo "Порт $BASH_SYNTAX_PORT открыт"
    fi
done
