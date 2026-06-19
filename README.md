# Basic Linux

Учебный проект по Linux и Bash.

# Общее

- [Базовая структура Linux](common/linux_structure.md) — корневые каталоги и их назначение

---

# Работа с файлами и директориями

### Навигация и просмотр

- [ls](files_and_directories/ls.md) — просмотр содержимого каталогов
- [cd](files_and_directories/cd.md) — переход между каталогами

### Просмотр и поиск в содержимом

- [head](files_and_directories/head.md) — первые строки файла
- [tail](files_and_directories/tail.md) — последние строки файла
- [more](files_and_directories/more.md) — постраничный просмотр (вперёд)
- [less](files_and_directories/less.md) — постраничный просмотр (вперёд и назад)
- [grep](files_and_directories/grep.md) — поиск строк в файлах

### Создание и изменение

- [touch](files_and_directories/touch.md) — создание файлов и обновление времени
- [mkdir](files_and_directories/mkdir.md) — создание каталогов
- [cp](files_and_directories/cp.md) — копирование файлов и каталогов
- [mv](files_and_directories/mv.md) — перемещение и переименование
- [ln](files_and_directories/ln.md) — жёсткие и символические ссылки
- [rm](files_and_directories/rm.md) — удаление файлов и каталогов (`rm`, `rmdir`)

### Информация о файлах и диске

- [df и stat](files_and_directories/df_stat.md) — место на диске и метаданные файлов

### Справка и поиск команд

- [man](files_and_directories/man.md) — справочные страницы команд
- [type](files_and_directories/type.md) — проверка типа команды
- [whereis](files_and_directories/whereis.md) — поиск программы и man-страницы

---

# Пользователь

- [who](user/who.md) — кто вошёл в систему
- [whoami](user/whoami.md) — имя текущего пользователя
- [id](user/id.md) — uid, gid и группы
- [/etc/passwd](user/passwd.md) — список пользователей системы
- [/etc/shadow](user/shadow.md) — хэши паролей и сроки действия
- [/etc/group](user/group.md) — список групп и участников
- [chmod](user/chmod.md) — права доступа к файлам и каталогам
- [useradd](user/useradd.md) — создание пользователей
- [usermod](user/usermod.md) — изменение пользователя и групп
