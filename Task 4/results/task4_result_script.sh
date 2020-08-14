#!/bin/bash
if [ $# -ne 2 ]
then 
	echo "There should be 2 params: 1-st is input directory, 2-nd is output one."
	exit 1
fi

input=$1
output=$2

if [ ! -d $dir ]
then
	echo "There is no input directory."
	exit 2
fi

for i in $(sudo find $input/* -printf '%u:%h:%p:%P\n' | sort)
do
	owner=$(echo $i | cut -d ':' -f1)
	dir=$(echo $i | cut -d ':' -f2)
	file=$(echo $i | cut -d ':' -f3)
	cfile=$(echo $i | cut -d ':' -f4)
	copyto=$output/${owner}$dir
	[ -d $file ] && continue
	[ -d $copyto ] || mkdir -p $copyto
	cp -f $file $copyto/$cfile

done
