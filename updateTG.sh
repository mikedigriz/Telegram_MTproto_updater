#!/bin/bash
# Обновление TG - прокси MTproto
sudo docker pull telegrammessenger/proxy # обновить образ
sudo docker stop mtproto-proxy # остановить контейнер
sudo docker rm mtproto-proxy # удалить контейнер
sudo docker run -d -p443:443 --name=mtproto-proxy --restart=always -v proxy-config:/data -e SECRET=!PASSWORD! telegrammessenger/proxy:latest #Запуск. Добавление Тега: -e TAG=482cee36214094099a4ae8878908b7ef
