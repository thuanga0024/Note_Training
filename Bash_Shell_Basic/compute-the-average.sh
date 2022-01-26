#!/bin/bash


read -p "Nhap Vao So Luong Con So Can Tinh: " abc

for ((i=1; i<=$abc; i++))
do
	read arr_number[$i]
	let " values+= ${arr_number[$i]} "
done

echo "scale=3; $values/$abc" | bc


