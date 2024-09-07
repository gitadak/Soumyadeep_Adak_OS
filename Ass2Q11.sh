#---------------------------------Ass2Q11.sh-----------------------------
#Armstrong Checking

echo -n "Enter the number: "
read n

l=`expr length $n`
s=0
i=$n
while [ $i -gt 0 ]
do
	r=$((i%10))
	k=0
	d=1
	while [ $k -lt $l ]
	do
		d=`expr $d \* $r`
		k=`expr $k + 1`
	done	
	s=$((s+d))
	i=$((i/10))
done

if [ $n -eq $s ]
then
	echo "$n is armstrong"
else
	echo "$n is not armstrong"
fi

: '
Output:
------
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q11.sh
Enter the number: 1634
1634 is armstrong
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q11.sh
Enter the number: 132
132 is not armstrong
'
#-------------------------------------------------------------------------
