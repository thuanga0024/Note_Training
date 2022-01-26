#!/bin/bash

check_time(){
	if echo $etime | grep -q "-"
	then
		day=$(echo $etime | awk -F'-' '{print $1}')
		if [ $day -gt 7 ] 
		then
			echo "Tien Trinh Co PID La: $pid Da Chay Duoc $day Ngay, Command Dang Thuc Hien La : $args" >> warning.txt
		fi
	fi
}
send_mail(){
	if echo $(ls -l) | grep -q "warning.txt"
	then
		mail -s "Warning_logs $(date +"%d-%m-%y")" yasuo.1999.1999.1999@gmail.com < warning.txt
		return 1
	else
		return 0
	fi
}
ps -eo pid=,etime=,args= > log_process.txt

while IFS=' ' read pid etime args
do
        check_time
done < /home/kira/log_process.txt

send_mail

if [ $? -eq 1 ]
then
	rm warning.txt log_process.txt
else
	echo "Ko Co Tien Trinh Nao Chay Qua 1 Tuan"
	rm log_process.txt
fi
