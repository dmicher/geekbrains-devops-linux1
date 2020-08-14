#!/bin/bash
if [ -d output ]
then
	rm -r output
fi

mkdir output

for i in {2010..2020}
do
	mkdir output/$i
	for j in {01..12}
	do
		mkdir output/$i/$j
		for k in {001..010}
		do
			echo "This is the $k file in $i directory and $j subdirectory" > output/$i/$j/${k}.txt
		done
	done
done

echo 'Output directory'
ls output
echo 'Directory 2015'
ls output/2015
echo 'Subdirectory 2012/08'
ls output/2012/08
echo 'File 2017/02/004.txt'
cat 'output/2017/02/004.txt'
