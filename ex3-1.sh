#!/bin/sh
i=$1
while [ true ]
do
	echo "hello world"
	i=`expr $i - 1`
	if [ $i -le 0 ]
	then
		break
	fi
done
exit 0