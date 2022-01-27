#!/bin/bash
#Day la script Dung De Tim Kiem File Da Duoc Tao Ra Cach Day 1 Nam
#ls -lt --time-style=+%d-%m-%y | awk -F' ' '{print $6"-"$7}'

check_time(){
	dungluong=$(echo $1 | awk -F'/' '{print $1}')
	nam=$(echo $1 | awk -F'/' '{print $2}' | awk -F'-' '{print $3}')
	file_name=$(echo $1 | awk -F'/' '{print $3}')
	if [ $[$(date +%y) - $nam ] -ge 1  ] 
	# if [ $[ 23 - $nam ] -ge 1  ] #Dung De test
	then
			check_file $file_name $dungluong
			let check_empty+=1
	fi
}

check_file(){
check=$(echo $1 | awk -F'.' '{print $2}')


case "$check" in
	sh)
		shell="$shell $1+$2"
		;;
	docx|doc)
		word="$word $1+$2"
		;;
	pdf)	
		pdf="$pdf $1+$2"
		;;
	*)
		more="$more $1+$2"
esac
}

abc=$(ls -ltdh *  --time-style=+%d-%m-%y | awk -F' ' '{print $5"/" $6"/"$7}')

i=1
value='$'
check_empty=0

while true
do	
	xyz=$(echo $abc | awk -F' ' '{print '"${value}$i"'}')
	if [ -z $xyz ]
	then
		if [ $check_empty -eq 0 ]
		then
				echo "Khong Co File Nao Duoc Tao Ra Hon 1 Nam"
				exit 1
		else
			file="list_file_$(date +"%T_%d-%m-%y")"
			echo "Day La Tat Ca File Shell Duoc Tao Ra Hon 1 Nam" >> $file
			echo $shell | sed 's/ /\n/g' | sed 's/+/ /g' >> $file

			echo -e "\nDay La Tat Ca File Word Duoc Tao Ra Hon 1 Nam" >> $file
			echo $word | sed 's/ /\n/g' | sed 's/+/ /g' >> $file

			echo -e "\nDay La Tat Ca File Shell Duoc Tao Ra Hon 1 Nam" >> $file
			echo $pdf | sed 's/ /\n/g' | sed 's/+/ /g' >> $file

			echo -e "\nDay La Tat Ca File Shell Duoc Tao Ra Hon 1 Nam" >> $file
			echo $more | sed 's/ /\n/g' | sed 's/+/ /g' >> $file
			exit 1
			fi
	else
		check_time $xyz
		let 'i+=1'
	fi
done

#echo $abc
