#!/bin/bash
#=====================================
# скрипт изменения кодировки файлов.
#=====================================
# суть для одного файла: iconv -f Исходная_кодировка -t В_какую_кодировку > выходной_файл
# CONFIG:
TYPES="*.txt"; # на случай поиска по расширению. напр. "*.log"
FROM='cp1251'; # из какой кодировки.
TO='utf8'; # в какую кодировку.
FILEPREFIX='.utf8'; # к названию перекодированного файла добавится.
 
# START:
if [ -z $1 ]
then
        echo "Encoding all $TYPES in directory From $FROM To $TO";
        echo "use $0 /Path_to_recoding_directory/"; echo;
        exit 1;
else
        echo "Encoding all $TYPES in directory $1 From $FROM To $TO";
        echo;
        find $1 -name "$TYPES" -type f -print0|while read -d '' SOURCE; do
                echo "========== SOURCE: $SOURCE FROM: $FROM TO: $TO ==========";
                cat "$SOURCE"|iconv -f $FROM -t $TO > "$SOURCE$FILEPREFIX";
                wait;
        done;
        exit 0;
fi
# end
