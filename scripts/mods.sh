# Определяем абсолютный путь к директории с модами
MODS_DIR="../server/mods"

# Создаем директорию, если она не существует
mkdir -p "$MODS_DIR"

# Скачиваем файл, используя абсолютный путь
wget -P "$MODS_DIR" "https://downloader.disk.yandex.ru/disk/1a6fc7e454f85c4e85501f06d4f63a66f7cd735e391ed22a95d21d1b963f4fa7/66f8b15b/YtT0Yfk107OSchZpQzvDtb9gXCG18XcjurF0isFT-uTWXD_f8nLocGalbTb6Ipc9ehaM9Kh-HkRbttFo1Mbegg%3D%3D?uid=0&filename=physics-mod-pro-v172-forge-1.21.0.jar&disposition=attachment&hash=VZ3lEPxTueielRSiQpiLS8AGzYMrIAEdgQ1GEKOfvwoLZzvjjKuXOTmWJyqsVU/Iq/J6bpmRyOJonT3VoXnDag%3D%3D&limit=0&content_type=application%2Fzip&owner_uid=247507369&fsize=139903482&hid=86bd6adde5b867510c082c4532b32881&media_type=compressed&tknv=v2"

echo "Моды успешно загружены в $MODS_DIR!"
