#!/bin/bash
clear
echo "
██╗░░██╗░██████╗░████████╗████████╗
██║░██╔╝██╔════╝░╚══██╔══╝╚══██╔══╝
█████═╝░██║░░██╗░░░░██║░░░░░░██║░░░
██╔═██╗░██║░░╚██╗░░░██║░░░░░░██║░░░
██║░╚██╗╚██████╔╝░░░██║░░░░░░██║░░░
╚═╝░░╚═╝░╚═════╝░░░░╚═╝░░░░░░╚═╝░░░
"

echo "Клонирование репозитория kgtt-bot"
git clone https://github.com/QuoNaro/kgtt-bot.git >/dev/null 2>&1

# Создание виртуального окружения
bash ./kgtt-bot-autoinstall/make-virtualenv.sh


echo Установка зависимостей проекта...
pip install -r ./kgtt-bot-autoinstall/requirements.txt >/dev/null 2>&1

# Создание конфига
bash ./kgtt-bot-autoinstall/make-config.sh

rm -rf ./kgtt-bot-autoinstall