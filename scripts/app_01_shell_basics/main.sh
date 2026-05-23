#!/usr/bin/env bash
# app_01_shell_basics — знакомство с оболочкой Bash

set -euo pipefail

echo "=== Basic Linux: shell basics ==="
echo "Shell: ${SHELL:-unknown}"
echo "User: ${USER:-unknown}"
echo "Home: ${HOME:-unknown}"
echo "Current directory: $(pwd)"

# Код возврата последней команды хранится в $?
true
echo "Exit code of 'true': $?"

false || true
echo "After 'false || true', exit code: $?"

echo "Done."
