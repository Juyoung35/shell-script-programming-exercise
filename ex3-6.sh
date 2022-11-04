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
    touch "file$i.txt"
done
mk_dir $files
tar_name="$files.tar"
tar -cf $tar_name file*.txt
mv $tar_name $files
cd $files
tar -xf $tar_name
exit 0