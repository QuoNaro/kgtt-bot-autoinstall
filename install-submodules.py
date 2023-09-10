import os
# Находим абсолютный путь к текущей директории
current_dir = os.path.abspath(os.path.dirname(__file__))
# Имена папок подмодулей
submodule_folder_names = os.listdir(f'{current_dir}/git_submodules/')
for submodule_folder_name in submodule_folder_names:
    # Установка модулей и их локальных зависимостей
    os.system(f'pip install {current_dir}/git_submodules/{submodule_folder_name}')
    
