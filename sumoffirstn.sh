#!bin/bash/
echo -e "Sum of first n numbers\nEnter the value of n"
read n
num=$n
sum=0
while [ $n -gt 0 ]
do
	sum=` expr $n + $sum `
	n=`expr $n - 1`
done
	echo Sum of first $num numbers is $sum
