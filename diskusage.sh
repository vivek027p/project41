#!bin/bash/
size=`df -h | awk -F " " 'NR==2{print $5}' | sed 's/%/ /g'`
if [ $size -gt 20 ]
then
mail -s "Disk size reached treshold value,please take necessary action" vivek027p@gmail.com
	echo "Disk size reached treshold value notification mail sent to conserned team"
else
	echo "disk size is under treshold value"
fi	
