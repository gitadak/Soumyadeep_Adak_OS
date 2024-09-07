#--------------------------------------------Ass2Q1.sh---------------------------------------------
: '
Write a menu driven shell script for the following options:
i) Merging the contents of two files into another
ii) Searching a pattern
'
echo -n "         1. Merge the contents\n
	 2. Searching a pattern\n
	 3. Exit\n
	 Choose the option: "
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
		exit
	;;
	*)
		echo "Invalid option"
	;;
esac
#-------------------------------------------------------------------------------------------------------
