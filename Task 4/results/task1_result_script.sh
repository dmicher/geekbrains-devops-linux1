#!/bin/bash
if [ $# -ne 2 ]
then
	echo Usage error:
	echo You shuld give two params to ${0}. First param is input file, the second one is uotput file.
	exit 1
fi

input=$1
output=$2

if [ ! -f $input ]
then 
	echo Input file not exists.
	exit 2
fi

cat $input | sed '/^$/d' | tr [:lower:] [:upper:] > $output

if [ ! -f $output ]
then
	echo Output error: probably not enought permissions.
	exit 3
fi

cat < $output 
