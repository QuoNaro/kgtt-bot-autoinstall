#!/bin/bash

echo -n "Создать конфиг-файл ? [Y/n] "
read item
case "$item" in
    y|Y) {

    # Создание конфига и запись его в файл config.py
    cd kgtt-bot/src
    read -p 'Введите токен для бота : ' token

    read -p 'Введите ID гугл таблицы : ' sheet
    if [[ $sheet = "" ]]
        then 
        sheet='1rGJ4_4BbSm0qweN7Iusz8d55e6uNr6bFRCv_j3W5fGU'
    fi

    read -p 'Введите таймаут рассылки (в секундах) : ' reltime
    if [[ $reltime = "" ]]
        then 
        reltime=120
    fi

    read -p 'Введите полный путь до базы данных : ' dbpath
    if [[ $dbpath = "" ]]
        then 
        dbpath=$(pwd)/kgtt.sqlite
    fi

    echo "config = {
                    'token'             : '$token'      ,
                    'table-id'          : '$sheet'      ,
                    'table-reload-time' :  $reltime     ,
                    'db-path'           : '$dbpath'     ,  
                } 
                " > config.py

    cd ..
    };;

    n|N) ;;
    *);;

esac