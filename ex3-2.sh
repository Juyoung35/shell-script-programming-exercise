#!/bin/sh
a=$1
operator=$2
b=$3
case "$operator" in
	+)
		echo `expr $a + $b`;;
	-)
		echo `expr $a - $b`;;
esac
exit 0
