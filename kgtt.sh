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


# Создание виртуального окружения
bash ./make-virtualenv.sh


echo Установка зависимостей проекта...
pip install -r https://raw.githubusercontent.com/QuoNaro/kgtt-bot-autoinstall/main/requirements.txt >/dev/null 2>&1

# Создание конфига
bash ./make-config.sh