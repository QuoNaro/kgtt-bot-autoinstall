dbpath=$(pwd)/kgtt.sqlite

cp $dbpath $dbpath >/dev/null 2>&1
if [ $? -ne 0 ];then
    echo База данных не найдена. Создание пустой базы данных...
    sqlite3 $dbpath < $(pwd)/kgtt-bot-autoinstall/db.sql >/dev/null 2>&1
fi