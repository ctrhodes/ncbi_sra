#!/bin/bash

pathname=( "/home/chris/geoSra/" "/home/chris/geoSra/" )

for d in "${pathname[@]}"
do

cd $d

pwd


for i in $(ls -d $d/*/)
do
cd ${i%%/}
echo  ${i%%/}

for sample in *sra
do
name=$(echo ${sample} | sed 's/.sra//')
ls
echo "sample is "$sample
echo "name is "$name

fastq-dump.2.6.3 $name

echo dump done!

done


echo leaving_$(ps -aef | grep -o `pwd`)

cd ../

done


done
