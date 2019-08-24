#!/bin/bash
#add fix to exercise6-fix here

if [ $# < 2 ];
then
    echo "Need insert more 1 parameters"
    exit 2

else
ARGS=("$@")
counter=0
destination=${ARGS[-1]}
for file in "${ARGS[@]}";
do
sudo scp $file vagrant@server2:/$destination
let count = du $file | cut -c 1-1
#echo $count
let countet = $(($counter + $count))
#counter = counter + count;
done

echo $counter
fi
