dbpath=$(pwd)/kgtt.sqlite
configpath=$(pwd)/kgtt-bot/src/config.py

cp $configpath $configpath >/dev/null 2>&1
if [ $? -ne 0 ];then
echo "Конфиг не обнаружен. Создание базового конфига..."
echo "config = {
'token'             : ''      ,
'table-id'          : '1rGJ4_4BbSm0qweN7Iusz8d55e6uNr6bFRCv_j3W5fGU'      ,
'table-reload-time' :  120     ,
'db-path'           : '$dbpath'     ,  
} " > ./kgtt-bot/src/config.py
path=$(pwd)/kgtt-bot/src/config.py
echo "Создан стандартный конфиг для бота [ $path ]"
fi



