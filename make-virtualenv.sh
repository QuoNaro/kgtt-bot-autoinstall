
echo Создание виртуального окружения...
python3 -m virtualenv .venv >/dev/null 2>&1

echo Установка зависимостей проекта...
./.venv/bin/python -m pip install -r ./kgtt-bot-autoinstall/requirements.txt >/dev/null 2>&1


