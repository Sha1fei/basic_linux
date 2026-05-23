#!/usr/bin/env bash
# app_02_variables — переменные и подстановка

set -euo pipefail

name="Linux"
count=3

echo "=== Basic Linux: variables ==="
echo "Hello, ${name}!"
echo "count + 2 = $((count + 2))"

# Значение по умолчанию, если переменная не задана
echo "Unset var with default: ${UNSET_VAR:-(not set)}"

# Длина строки
phrase="bash scripting"
echo "Length of '${phrase}': ${#phrase}"
