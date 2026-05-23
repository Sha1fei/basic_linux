# Basic Linux — учебный проект по Linux и Bash

Практический набор примеров по работе в терминале Linux: оболочка Bash, файловая система, права, процессы и типовые утилиты.

## Описание

Проект устроен как последовательность небольших модулей в каталоге `scripts/`. Каждый модуль — отдельный исполняемый сценарий с комментариями и примерами запуска.

## Структура проекта

### Базовые темы

- **[app_01_shell_basics](scripts/app_01_shell_basics/main.sh)** — оболочка, `echo`, переменные окружения, код возврата
- **[app_02_variables](scripts/app_02_variables/main.sh)** — локальные переменные, подстановка `${var}`, арифметика `$(( ))`
- **[app_03_conditionals](scripts/app_03_conditionals/main.sh)** — `if`, `test` / `[ ]`, сравнение строк и чисел

## Запуск

### Требования

- Linux или macOS с установленным Bash 4+
- Права на выполнение сценариев (`chmod +x`)

### Пример

```bash
cd scripts/app_01_shell_basics
chmod +x main.sh
./main.sh
```

Или из корня репозитория:

```bash
bash scripts/app_01_shell_basics/main.sh
```

## Структура каталогов

```
basic_linux/
├── scripts/
│   ├── app_01_shell_basics/
│   │   └── main.sh
│   ├── app_02_variables/
│   │   └── main.sh
│   └── app_03_conditionals/
│       └── main.sh
├── .editorconfig
├── .gitignore
└── README.md
```

## Лицензия

Проект предназначен для образовательных целей.
