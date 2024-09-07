#----------------------------Ass2Q14.sh--------------------------------
#Finding GCD for 2 numbers (Euclid's algorithm)

echo "Enter two numbers:"
read x
read y

a=$x
b=$y
while [ $b -ne 0 ]
do
	temp=$b
	b=$((a%b))
	a=$temp
done

echo "GCD of $x and $y is $a"

: '
Output:
------
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q14.sh
Enter two numbers:
9
6
GCD of 9 and 6 is 3
'
#----------------------------------------------------------------------
