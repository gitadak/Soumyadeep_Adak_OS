#----------------------------Ass2Q16.sh-----------------------------------
#Factorial of a given number

echo -n "Enter the number: "
read n

if [ $n -eq 0 ]
then
	echo "Factorial of $n is 1"
	exit 0
fi

i=$n
fact=1
while [ $i -ge 1 ]
do
	fact=`expr $fact \* $i`
	i=`expr $i - 1`
done

: '
while [ $i -ge 1 ]
do
    fact=$(expr $fact \* $i)
    i=$(expr $i - 1)
done
'

echo "Factorial of $n = $fact"

: '
Output:
------
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q16.sh
Enter the number: 5
Factorial of 5 = 120
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q16.sh
Enter the number: 0
Factorial of 0 is 1
'

#----------------------------------------------------------------------------
