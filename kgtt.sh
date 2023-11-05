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

echo "Клонирование репозитория..."
git clone https://github.com/QuoNaro/kgtt-bot.git >/dev/null 2>&1

echo "Клонирование вспомогательного репозитория ..."
git clone https://github.com/QuoNaro/kgtt-bot.git >/dev/null 2>&1

# Создание виртуального окружения
bash ./kgtt-bot-autoinstall/make-virtualenv.sh


echo Установка зависимостей проекта...
pip install -r https://raw.githubusercontent.com/QuoNaro/kgtt-bot-autoinstall/main/requirements.txt >/dev/null 2>&1

# Создание конфига
curl ./kgtt-bot-autoinstall/make-config.sh