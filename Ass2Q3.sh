#------------------------------------------Ass2Q3.sh-------------------------------------------
: '
Write a shell script that will display some desired number of lines
starting from a specified line of a given file. User must interactively supply the file name,
starting line number and number of lines to be displayed.
'

read -p "Enter the file name: " filename
read -p "Enter the starting line number: " start_line
read -p "Enter the number of lines to display: " num_lines

if [ ! -f "$filename" ]; then
	echo "File not found"
	exit 1
fi

head -n "$((start_line+num_lines-1))" "$filename" | tail -n "$num_lines"

: '
Output:
------
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ cat>Ass2Q3textfile
dfbhdfg fghdgh dg
derghdfghr
erhyethrtj fgjgjfj
ertyfrthfgj
rtjhfgjdfhgj ftjhfgnj fgjfgj
fthfgjfgj
frtjfgjfgj fghjfgj
frthfgj fgjhfgj fghjfghj
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q3.sh
Enter the file name: Ass2Q3textfile
Enter the starting line number: 3
Enter the number of lines to display: 4
erhyethrtj fgjgjfj
ertyfrthfgj
rtjhfgjdfhgj ftjhfgnj fgjfgj
fthfgjfgj
'
#---------------------------------------------------------------------------------------------
