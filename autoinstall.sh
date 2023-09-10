#!/bin/bash

# Инициализация репозитория и суб-модулей
git clone https://github.com/QuoNaro/kgtt-bot.git
cd kgtt-bot
git submodule init && git submodule update

# Устновка всех зависимостей
git clone https://github.com/QuoNaro/kgtt-bot-autoinstall.git
python -m pip install -r kgtt-bot-autoinstall/requirements.txt
python -u "kgtt-bot-autoinstall/install-submodules.py"
sudo rm -r kgtt-bot-autoinstall
