#---------------------------------Ass2Q12.sh-----------------------------
#Write a shel script to print all possible combinations of 3 numbers

for i in $(seq 1 9)
do
	for j in $(seq 1 9)
	do
		for k in $(seq 1 9)
		do
			if [ $i -ne $j ] && [ $j -ne $k ] && [ $k -ne $i ]
			then
				echo "$i $j $k"
			fi
		done
	done
done

: '
Output:
------
1 2 3
1 2 4
1 2 5
.
.
.
9 8 5
9 8 6
9 8 7
'
#-----------------------------------------------------------------------
