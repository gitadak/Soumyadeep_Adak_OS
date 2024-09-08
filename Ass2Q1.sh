#--------------------------------------------Ass2Q1.sh---------------------------------------------
: '
Write a menu driven shell script for the following options:
i) Merging the contents of two files into another
ii) Searching a pattern
'
while true; do
echo "1. Merge the contents"
echo "2. Searching a pattern"
echo "3. Exit"
echo -n "Choose the option: "
read choice

case $choice in
	1) 
		echo -n "Enter the file1: "
		read file1
		echo -n "Enter the file2: "
		read file2
		echo "$file1 content:"
		cat $file1
                echo "$file2 content:"
                cat $file2
		echo -n "Enter the new file: "
		read file3
		cat $file1 $file2 >> $file3
                echo "$file3 content:"
                cat $file3
	;;
	2)
		echo -n "Enter file name: "
		read patFile
		echo -n "Enter pattern name: "
		read pattern
		echo -n "Enter new file name: "
		read patmatch
		if grep "$pattern" $patFile > $patmatch
		then
			echo "Pattern found"
			cat $patmatch
		else
			echo "Pattern not found"
		fi
	;;
	3) 
		exit 0
	;;
	*)
		echo "Invalid option"
	;;
esac
done

<<EOF
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ cat>f1
Soumyadeep Adak
CSE-I
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ cat>f2
Alampur, Howrah
7596868660
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ touch m1
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q1.sh
1. Merge the contents
2. Searching a pattern
3. Exit
Choose the option: 1
Enter the file1: f1
Enter the file2: f2
f1 content:
Soumyadeep Adak
CSE-I
f2 content:
Alampur, Howrah
7596868660
Enter the new file: m1
m1 content:
Soumyadeep Adak
CSE-I
Alampur, Howrah
7596868660
1. Merge the contents
2. Searching a pattern
3. Exit
Choose the option: 2
Enter file name: f1
Enter pattern name: deep
Enter new file name: m1
Pattern found
Soumyadeep Adak
1. Merge the contents
2. Searching a pattern
3. Exit
Choose the option: 3
EOF
#-------------------------------------------------------------------------------------------------------
