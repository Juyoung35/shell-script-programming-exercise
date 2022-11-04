#!/bin/sh
echo "리눅스가 재미있나요? (yes / no)"
read input
case "$input" in
	+yes|yes*|YES|YES*|Yes|Yes*|y|Y)
		echo yes;;
	+no|no*|NO|NO*|No|No*|n|N)
		echo no;;
	*)
		echo "yes or no로 입력해 주세요."
esac
exit 0
