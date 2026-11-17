#!/bin/bash
# Вычисление площади и периметра прямоугольника

w=8
h=5

area=$((w * h))
perimeter=$((2 * (w + h)))

echo "Ширина: $w"
echo "Высота: $h"
echo "Площадь: $area"
echo "Периметр: $perimeter"
