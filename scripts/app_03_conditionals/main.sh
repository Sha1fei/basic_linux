#!/usr/bin/env bash
# app_03_conditionals — условия и test

set -euo pipefail

echo "=== Basic Linux: conditionals ==="

a=10
b=20

if [ "$a" -lt "$b" ]; then
  echo "$a is less than $b"
else
  echo "$a is not less than $b"
fi

file="/etc/hosts"
if [ -f "$file" ]; then
  echo "File exists: $file"
else
  echo "File not found: $file"
fi

answer="yes"
case "$answer" in
  yes|y) echo "Confirmed" ;;
  no|n) echo "Cancelled" ;;
  *) echo "Unknown answer: $answer" ;;
esac
