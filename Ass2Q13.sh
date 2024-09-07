#--------------------------------Ass2Q13.sh-----------------------------------
#Find position of substring in a given string

echo -n "Enter the parent string: "
read mainstring
echo -n "Enter the substring: "
read substring

mainlen=`expr length $mainstring`
sublen=`expr length $substring`

i=1
while [ $i -le $((mainlen-sublen+1)) ]
do
	sub=`expr substr $mainstring $i $sublen`
	if [ "$substring" = "$sub" ]
	then
		echo "Substring found at position $i"
		exit 0
	fi
	i=`expr $i + 1`
done

echo "Substring not found"

: '
Output:
------
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q13.sh
Enter the parent string: Soumyadeep
Enter the substring: deep
Substring found at position 7
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q13.sh
Enter the parent string: Soumyadeep
Enter the substring: Adak
Substring not found
'
#---------------------------------------------------------------------------
