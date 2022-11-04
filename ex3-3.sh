#!/bin/sh
weight=$1
height=$2
bmi_multiplied_by_ten=`expr 10 \* $weight \* 100 \* 100 / \( $height \* $height \)`
if [ $bmi_multiplied_by_ten -lt `expr 185` ]
then
	echo "저체중입니다."
elif [ 185 -le $bmi_multiplied_by_ten ] && [ $bmi_multiplied_by_ten -lt 230 ]
then
	echo "정상체중입니다."
else
	echo "과체중입니다."
fi
exit 0
