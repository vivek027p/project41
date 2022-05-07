#!bin/bash/
echo "Employee list with more than 40 age"
$1=temp
sed 1d $1
while read line
do
	age=`echo $line | cut -d " " -f3`
	if [ $age -gt 40 ]
	then
	echo $line | cut -d " " -f2
	fi
done < $1
cat $temp > $1
