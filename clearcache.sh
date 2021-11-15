#!/bin/sh
echo "Было занято в кеше ОЗУ"
free
# Чистим pagecache:
sync
echo 1 | sudo tee -a /proc/sys/vm/drop_caches
#Чистим dentrie и inode кэши:
sync
echo 2 | sudo tee -a /proc/sys/vm/drop_caches
#Чистим pagecache, dentrie и inode кэши:
sync
echo 3 | sudo tee -a /proc/sys/vm/drop_caches
echo "Стало свободно в ОЗУ"
free
exit 0
