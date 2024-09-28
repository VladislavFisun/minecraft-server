# Определяем абсолютный путь к директории с модами
MODS_DIR="../server/mods"

# Создаем директорию, если она не существует
mkdir -p "$MODS_DIR"

# Скачиваем файл, используя абсолютный путь
wget -P "$MODS_DIR" "https://ru-minecraft.ru/download/index.php?file=physics-mod-pro-v172-forge-1.21.0.jar"

echo "Моды успешно загружены в $MODS_DIR!"
