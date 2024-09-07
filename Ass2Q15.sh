#---------------------------Ass2Q15.sh--------------------------------
#Count number of words, characters, white spaces and special symbols in a given text

file=$1

#Check if file exists
if [ ! -f "$file" ]
then
	echo "File not found"
	exit 1
fi

word_count=$(cat "$file" | wc -w)
char_count=$(grep -o '[^[:space:]]' "$file" | wc -l) #Excluding space and newline character
whitespace_count=$(grep -o '[[:space:]]' "$file" | wc -l)
special_symbol_count=$(grep -o '[^a-zA-Z0-9[:space:]]' "$file" | wc -l)

echo "Number of words: $word_count"
echo "Number of characters (excluding whitespace and newline characters): $char_count"
echo "Number of whitespaces: $whitespace_count"
echo "Number of special symbols: $special_symbol_count"

: '
Output:
------
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ cat>Ass2Q15textfile
Soumyadeep Adak
sadak8306@gmail.com
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q15.sh
File not found
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q15.sh Ass2Q15textfile
Number of words: 3
Number of characters (excluding whitespace and newline characters): 33
Number of whitespaces: 1
Number of special symbols: 2
'
#----------------------------------------------------------------------

