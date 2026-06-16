# Команда `whereis`

`whereis` ищет **бинарный файл**, **исходники** и **man-страницу** для команды.

Утилита обычно находится в `/usr/bin/whereis`.

В отличие от `type` и `which`, `whereis` показывает не только путь к программе, но и связанную документацию.

## Базовое использование

Найти всё, что связано с командой:

```bash
whereis ls
```

Несколько команд за раз:

```bash
whereis ls cp rm
```

Типичный вывод:

```text
ls: /usr/bin/ls /usr/share/man/man1/ls.1.gz
```

Здесь:
- `/usr/bin/ls` — исполняемый файл
- `/usr/share/man/man1/ls.1.gz` — man-страница

## Полезные опции

| Опция | Описание |
| ----- | -------- |
| `-b` | Показать только бинарные файлы |
| `-m` | Показать только man-страницы |
| `-s` | Показать только исходники |
| `-u` | Показать команды с необычным расположением |
| `-B` | Ограничить поиск бинарников каталогом |
| `-M` | Ограничить поиск man-страниц каталогом |
| `-S` | Ограничить поиск исходников каталогом |

```bash
whereis -b ls
whereis -m ls
whereis -b -m ls
```

## Примеры

Найти программу и документацию:

```bash
whereis bash
# bash: /usr/bin/bash /etc/bash.bashrc /usr/share/man/man1/bash.1.gz
```

Только путь к исполняемому файлу:

```bash
whereis -b cp
# cp: /usr/bin/cp
```

Только man-страница:

```bash
whereis -m mkdir
# mkdir: /usr/share/man/man1/mkdir.1.gz
```

Проверить несколько утилит:

```bash
whereis ls rm mv cp
```

## `whereis`, `which` и `type`

| Команда | Что ищет |
| ------- | -------- |
| `whereis` | бинарник, исходники, man-страницы |
| `which` | первый исполняемый файл в `PATH` |
| `type` | alias, builtin, function или путь к файлу |

```bash
type ls
# ls is aliased to `ls --color=auto`

which ls
# /usr/bin/ls

whereis ls
# ls: /usr/bin/ls /usr/share/man/man1/ls.1.gz
```

Для **builtin**-команд вроде `cd` бинарника может не быть:

```bash
whereis cd
# cd: /usr/bin/cd /usr/share/man/man1/cd.1.gz
# /usr/bin/cd — отдельная утилита, не то же самое, что builtin cd в bash
```
