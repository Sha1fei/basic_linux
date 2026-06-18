# Создание пользователей

Создавать пользователей может **root** или пользователь с `sudo`.

Записи появляются в `/etc/passwd`, `/etc/shadow` и `/etc/group`.

## `adduser` — удобный способ (Ubuntu/Debian)

Интерактивно создаёт пользователя, домашний каталог и запрашивает пароль:

```bash
sudo adduser alex
```

Что обычно делает `adduser`:

- добавляет строку в `/etc/passwd`
- создаёт `/home/alex`
- копирует файлы из `/etc/skel`
- задаёт пароль через `passwd`

## `useradd` — базовая команда

Утилита обычно находится в `/usr/sbin/useradd`.

Минимально (без домашнего каталога):

```bash
sudo useradd alex
```

Рекомендуемый вариант:

```bash
sudo useradd -m -s /bin/bash alex
sudo passwd alex
```

| Опция | Описание |
| ----- | -------- |
| `-m` | создать домашний каталог `/home/имя` |
| `-s /bin/bash` | shell по умолчанию |
| `-g группа` | основная группа |
| `-G sudo,docker` | дополнительные группы |
| `-u 1001` | задать uid вручную |
| `-c "комментарий"` | поле GECOS (имя, комментарий) |

Пример с группами:

```bash
sudo useradd -m -s /bin/bash -G sudo alex
sudo passwd alex
```

## Задать пароль

После `useradd` пароль задаётся отдельно:

```bash
sudo passwd alex
```

Без пароля вход по паролю может быть недоступен.

## Проверка

```bash
id alex
grep ^alex: /etc/passwd
grep alex /etc/group
ls -la /home/alex
```

Пример `/etc/passwd`:

```text
alex:x:1000:1000::/home/alex:/bin/bash
```

## Войти под новым пользователем

Временно переключиться:

```bash
su - alex
whoami
```

Выйти обратно:

```bash
exit
```

## `adduser` и `useradd`

| | `adduser` | `useradd` |
| --- | --- | --- |
| Где | Debian/Ubuntu | везде в Linux |
| Стиль | интерактивный, проще | низкоуровневый |
| Домашний каталог | создаёт сам | нужен флаг `-m` |
| Пароль | спрашивает сам | через `passwd` |

## Удалить пользователя

```bash
sudo userdel alex
```

С домашним каталогом:

```bash
sudo userdel -r alex
```
