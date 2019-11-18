#!/usr/bin/env bash


####
#cd /mnt/c/users/stefan/source/its/bash
#./AdvancedLab5searchInLog.sh -i 163.135.16.62 -od outdir -f NASA.txt

while [[ "$#" > 0 ]]; do case $1 in
   -i) ip="$2"; shift;shift;;
  -f) file="$2"; shift;shift;;
  -od) outfolder="$2"; shift;shift;;
  *) echo "Unknown parameter passed: $1";shift;shift;;
esac; done
mkdir -p $outfolder
filename=$(date +"%Y_%m_%d")

grep "$ip" $file >> $outfolder/$filename.log
mv $file $file.bak
