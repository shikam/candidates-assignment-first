#!/bin/bash
#add fix to exercise6-fix here

if [ $# < 2 ]
then
    echo "Need insert more 1 parameters"
    exit 2
fi

ARGS=("$@")
counter=0
destination=${ARGS[-1]}
for file in "${ARGS[@]}";
do
sudo scp $file vagrant@server2:/$destination
let count = du -sh $file
let countet = $(($counter + $count))
#counter = counter + count;
done

echo $counter
