#!/bin/sh

printf "Enter the filename with extension you want to run: "

read filename

file_ext=$(printf '%s' "$filename" | awk -F . '{if (NF>1) {print $NF}}')
name="${filename%.*}"

if [ $file_ext = 'cpp' ]; then
    echo "It's a cpp file"
    g++ $filename -o $name
    echo "Complied!!\n/*********OUTPUT**************/\n"
    ./$name
fi

if [ $file_ext = 'c' ]; then
    echo "It's a c file"
    gcc $filename -o $name
    echo "Complied!!\n/*********OUTPUT**************/\n"
    ./$name
fi

if [ $file_ext = 'py' ]; then
    echo "It's a python file"
    echo "/*********OUTPUT**************/\n"
    python $filename
fi
