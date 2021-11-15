#dd_iso.sh
#быстрое создание образа компакт-диска в домашней директории
#имя образа ггммдд_ччммсс.iso
 
#!/bin/bash
echo "********** iso-creation ********** start **********"
disk_name=$(date +%y%m%d_%H%M%S)
dd if=/dev/cdrom of=~/$disk_name.iso
echo "********** iso-creation ********** finish **********"
