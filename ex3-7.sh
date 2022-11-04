#!/bin/sh
mk_dir() {
    if [ ! -d $1 ]
    then
        mkdir $1
    fi
}
files=$1
mk_dir $files
cd $files
for i in $(seq 0 4)
do
    mkdir -p "file$i/file$i.txt"
done
exit 0