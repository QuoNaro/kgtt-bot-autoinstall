
if [ -d .venv ];then
    echo Создание виртуального окружения...
    python3 -m virtualenv .venv >/dev/null 2>&1
    if [ $? -ne 0 ];then
        python3 -m venv .venv >/dev/null 2>&1
    fi
fi

echo Установка зависимостей проекта...
./.venv/bin/python -m pip install -r ./kgtt-bot-autoinstall/requirements.txt >/dev/null 2>&1


