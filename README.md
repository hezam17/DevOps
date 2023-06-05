# DevOps

First Task 

Напишите bash скрипт, который создаст для всех пользователей
системы отдельную папку в корневой директории с именем пользователя и
установит для нее права 755. При этом владельцем папки должен быть соответствующий пользователь.
Путь до корневого каталога создания директорий, должен определяться при запуске скрипта пользователем.
Лог должен писаться и в stdout и в файл.


2 Task
Напишите Dockerfile для создания образа, который будет содержать веб-сервер Apache или Nginx и базу данных MySQL или postgresql. В Dockerfile должны использоваться инструкции: FROM, MAINTAINER, RUN, CMD, WORKDIR, ENV, ADD, COPY, VOLUME, USER, EXPOSE. Dockerfile должен содержать комментарии с пояснениями того, что делается. Собранный образ должен иметь имя вида <фамилия>_<инициалы>image<текущая дата>. Рядом с dockerfile должен быть скрин, на котором будут видны все слои вашего image и их размер на диске, команда, которой вы это выведете.
