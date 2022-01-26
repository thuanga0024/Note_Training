#!/bin/bash


read -p "Nhap Vao So Luong Con So Can Tinh: " abc

values=0

for ((i=1; i<=$abc; i++))
do
	read arr_number[$i]
	let " values+= ${arr_number[$i]}"
done

echo $values
echo $abc
echo "scale=3; $values/$abc" | bc


