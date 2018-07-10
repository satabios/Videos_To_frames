#!/bin/bash

echo Video File Format with "."?
read vfr
echo Starting naming convention number?
read ncm
echo Makefill for the names given to each frame?
read mk
echo Frames file format with "."?
read fff
echo FPs?
read FPs


for file in *$vfr; do                                                 
    file_name=$file
    mkdir -p $ncm
    mv $file_name "./$ncm/$ncm$vfr"
    cd "$ncm/"
    echo "$FPS" 
    ffmpeg -i "$ncm$vfr" -vf fps=$FPs $ncm_%0$((mk))d$fff

    ncm=$(($ncm+1))
    cd ../
    
done

