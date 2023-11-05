for mngr in pacman apt yum zypp apt-get apk; do
    which $mngr >/dev/null 2>&1
    if [ $? -eq 0 ]
    then
        pkgmngr=$i
    fi
done


python -m virtualenv >/dev/null 2>&1
if [ $? -eq 2 ];
then
    echo "Виртуальное окружение установлено"
else
    echo Установка Virtualenv...
    if [[ $pkgmngr -eq "pacman" ]]
    then
        sudo pacman -S python-virtualenv 
    else
        python3 -m pip install virtualenv
    fi
fi

echo Создание виртуального окружения...
python3 -m virtualenv .venv >/dev/null 2>&1

echo Активация виртуального окружения...
source ./.venv/bin/activate >/dev/null 2>&1

echo Установка зависимостей проекта...
python3 -m pip install -r ./kgtt-bot-autoinstall/requirements.txt >/dev/null 2>&1


