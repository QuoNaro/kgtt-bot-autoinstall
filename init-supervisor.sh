pyenv=$(pwd)/.venv/bin/python
supervisor_dir='/etc/supervisor/conf.d/'

for name in bot mail; do
echo "
[program:$name]
command=$pyenv $(pwd)/kgtt-bot/src/$name-start.py
autostart=true
autorestart=true
" > $supervisor_dir$name.conf
done