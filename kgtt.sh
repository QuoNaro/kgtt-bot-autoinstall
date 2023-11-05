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

echo "Клонирование вспомогательного репозитория kgtt-bot-autoinstall"
git clone https://github.com/QuoNaro/kgtt-bot-autoinstall.git >/dev/null 2>&1

# Создание виртуального окружения
bash ./kgtt-bot-autoinstall/make-virtualenv.sh

# Создание файлов для supervisor
bash ./kgtt-bot-autoinstall/init-supervisor.sh

# Создание конфига
bash ./kgtt-bot-autoinstall/make-config.sh

rm -rf ./kgtt-bot-autoinstall