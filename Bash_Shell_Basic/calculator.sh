#!/bin/bash

read -s -p "Vui Long Nhap Mat Khau De Su Dung: " password

echo $password
if [ $password == "P@ssWord123" ]
then
	thamso1=$1
	thamso2=$2
	thamso3=$3
	s=0
	cong(){
		s=$[$thamso2+$thamso3 | bc]
		echo "Ket Qua Phep Cong La: "$s
		log
	}
	tru(){
		s=$[$thamso2-$thamso3 | bc]
			echo "Ket Qua Phep Tru La: "$s
		log
	}
	nhan(){
		s=$[$thamso2*$thamso3 | bc]
			echo "Ket Qua Phep Nhanh La: "$s
		log
	}
	chia(){
		s=$[$thamso2/$thamso3 | bc]
			echo "Ket Qua Phep Chia La: "$s
		log
	}
	log(){
		current_time=$(date +%T)
			echo "$current_time $thamso1 $thamso2 "voi" $thamso3 "La" $s" >> ~/Documents/Note_Training/Bash_Shell_Basic/log.txt	
	}
	case "$thamso1" in
		phep_cong)
			cong
			;;
		phep_tru)
			tru
			;;
		phep_nhan)
			nhan
			;;
		phep_chia)
			while [ $thamso3 -eq 0 ]
				do
				read -p "Hay Nhap Lai So Thu 2 Khac 0: " number2
					thamso3=$number2
			done		
			chia
			;;
		*|-h|--help)
			echo "$0 {phep_cong|phep_tru|phep_nhan|phep_chia} number1 number2"
			exit 1
			;;
	esac
else
	echo "Ban Da Nhap Sai Mat Khau"
	exit 1
fi