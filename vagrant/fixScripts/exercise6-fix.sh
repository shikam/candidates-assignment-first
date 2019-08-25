#!/bin/bash
#e6-fix here

if [ $# -lt 2 ];
then
    echo "Need to insert at least 2 parameter"
        echo "exercise6-fix.sh [ file1 [, file2, ..], dest_dir ]"
    exit 2

else
        ARGS=("$@")
        #AR=ARGS[${ARGS[@]}-1]
        unset ARGS[${#ARGS[@]}-1]
        counter=0
        fileSize=0
        dest="${@: -1}"
        for file in "${ARGS[@]}";
        do
                scp  $file vagrant@server2:/$dest
                fileSize="$(stat --printf="%s" "$file")"
                counter=$((fileSize + counter))
        done

        echo $counter
fi


