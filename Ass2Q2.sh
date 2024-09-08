#---------------------------------Ass2Q2.sh---------------------------
: '
#Palindrome Checking
echo "Enter any String:"
read s
n=`expr length $s`
#n=${#s}
i=1
#i=0
r=""
while [ $i -le $n ]
#while [ $i -lt $n ]
do
	x=`expr substr $s $i 1`
	#x=${s:$i:1}
	r=$x$r
	#i=`expr $i + 1`
	i=$((i+1))
done
echo "Reverse of $s = $r"
if [ "$s" = "$r" ]
then
	echo "Palindrome"
else
	echo "Not Palindrome"
fi
'

#Alternative Version (work more consistently across different environments)
#Palindrome Checking
#!/bin/sh

echo "Enter any String:"
read s

n=$(echo -n "$s" | wc -c)  # Count number of characters in the string
i=1
r=""

while [ $i -le $n ]
do
    x=$(echo "$s" | cut -c $i)  # Extract the i-th character (1-based index)
    r=$x$r
    i=$((i + 1))
done

echo "Reverse of $s = $r"

if [ "$s" = "$r" ]
then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi

: '
Output:
------
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q2.sh
Enter any String:
121
Reverse of 121 = 121
Palindrome
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q2.sh
Enter any String:
123
Reverse of 123 = 321
Not Palindrome
'
#----------------------------------------------------------------------
