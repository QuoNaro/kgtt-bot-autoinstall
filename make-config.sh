sheet='1rGJ4_4BbSm0qweN7Iusz8d55e6uNr6bFRCv_j3W5fGU'
reltime=120
dbpath=$(pwd)/kgtt.sqlite
echo "config = {
'token'             : '$token'      ,
'table-id'          : '$sheet'      ,
'table-reload-time' :  $reltime     ,
'db-path'           : '$dbpath'     ,  
} " > ./kgtt-bot/src/config.py

path=$(pwd)/kgtt-bot/src/config.py
echo Создан стандартный конфиг для бота [ $path ] 
