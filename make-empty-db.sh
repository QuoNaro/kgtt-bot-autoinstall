dbpath=$(pwd)/kgtt.sqlite

if [ ! -f $dbpath ]; then
    echo База данных не найдена. Создание пустой базы данных...
    sqlite3 $dbpath < $(pwd)/kgtt-bot-autoinstall/db.sql >/dev/null 2>&1
fi
