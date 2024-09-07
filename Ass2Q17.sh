#------------------------------------Ass2Q17.sh----------------------------------------
#Generate Fibonacci series up to 'n'

echo -n "Enter the limitting value: "
read n

a=0
b=1
sum=1

echo -n "$a, $b"

while true
do
	c=$((a+b))
	if [ $c -le $n ]
	then
		echo -n ", $c"
		sum=$((sum+c))
	else
		echo "\nSum = $sum"
		exit 0
	fi
	a=$b
	b=$c
done

: '
Output:
------
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q17.sh
Enter the limitting value: 25
0, 1, 1, 2, 3, 5, 8, 13, 21
Sum = 54
'
#----------------------------------------------------------------------------
