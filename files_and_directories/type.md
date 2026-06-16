# Команда `type`

`type` показывает, **что именно выполнится**, когда вы вводите имя команды в shell.

Это **встроенная команда Bash** (builtin), а не отдельная программа в `/bin`.

Проверить:

```bash
type type
# type is a shell builtin
```

## Базовое использование

Узнать тип одной команды:

```bash
type ls
type cd
type echo
```

Несколько команд за раз:

```bash
type ls cd rm
```

## Что может показать `type`

| Результат | Значение |
| --------- | -------- |
| `alias` | команда — псевдоним |
| `keyword` | зарезервированное слово shell (`if`, `for`, `while`) |
| `function` | пользовательская функция |
| `builtin` | встроенная команда shell |
| `file` | внешняя программа на диске |

Примеры:

```bash
type ls
# ls is aliased to `ls --color=auto'

type cd
# cd is a shell builtin

type rm
# rm is /usr/bin/rm

type if
# if is a shell keyword
```

## Полезные опции

| Опция | Описание |
| ----- | -------- |
| `-t` | Показать только тип: `alias`, `builtin`, `file` и т.д. |
| `-a` | Показать **все** варианты, не только первый |
| `-p` | Показать путь, если это файл (без лишнего текста) |

```bash
type -t ls      # alias
type -t cd      # builtin
type -t rm      # file

type -a ls
# ls is aliased to `ls --color=auto`
# ls is /usr/bin/ls
# ls is /bin/ls

type -p rm
# /usr/bin/rm
```

## Примеры

Проверить, почему `ls` ведёт себя иначе, чем ожидалось:

```bash
type ls
alias ls
```

Вызвать команду без алиаса:

```bash
type ls
\ls
command ls
```

Понять, встроенная команда или программа:

```bash
type cd
# builtin — работает внутри shell

type mkdir
# file — отдельная утилита
```

## Зачем это нужно

- узнать, **alias** ли мешает (часто у `ls`)
- понять, можно ли использовать команду в скрипте так же, как в терминале
- найти **путь к программе**, если это `file`
- отличить **builtin** (`cd`, `echo`, `type`) от внешних утилит (`cp`, `rm`, `mkdir`)

## `type`, `which` и `command`

| Команда | Что делает |
| ------- | ---------- |
| `type` | показывает alias, builtin, function или путь к файлу |
| `which` | ищет исполняемый файл в `PATH` (алиасы обычно не показывает) |
| `command` | запускает команду, обходя alias |

```bash
type ls
# ls is aliased to `ls --color=auto'

which ls
# /usr/bin/ls

command ls
# выполнит /usr/bin/ls без алиаса
```

