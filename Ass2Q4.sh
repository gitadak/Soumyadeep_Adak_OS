#----------------------------------------------------Ass2Q4.sh----------------------------------------------------
: '
Write a menu driven shell script for the following options:
(i) Number of presently active users
(ii) Displaying some desired number of lines from top of a file
(iii) Updating the access time of a given file to current time
(iv) If the user gives some invalid choice it will prompt "Invalid option" message
'

while true
do
    # Display the menu
    echo "Menu:"
    echo "1. Number of presently active users"
    echo "2. Display some desired number of lines from top of a file"
    echo "3. Update the access time of a given file to current time"
    echo "4. Exit"
    
    # Read user choice
    echo -n "Choose an option (1-4): "
    read choice

    case $choice in
        1)
            # Option 1: Number of presently active users
            echo "Number of presently active users: $(who | wc -l)"
            ;;
        
        2)
            # Option 2: Display some desired number of lines from top of a file
            echo -n "Enter the file name: "
            read file
            if [ ! -f "$file" ]; then
                echo "File not found!"
            else
                echo -n "Enter the number of lines to display: "
                read num_lines
                head -n "$num_lines" "$file"
            fi
            ;;
        
        3)
            # Option 3: Update the access time of a given file to current time
            echo -n "Enter the file name: "
            read file
            if [ ! -f "$file" ]; then
                echo "File not found!"
            else
		echo "Access time before updating:"
		stat --format="Access time: %x" "$file"
                touch "$file"
                echo "Access time of '$file' updated to current time."
                stat --format="Access time: %x" "$file"
            fi
            ;;
        
        4)
            # Option 4: Exit
            echo "Exiting."
            exit 0
            ;;
        
        *)
            # Invalid option
            echo "Invalid option"
            ;;
    esac
done

<<EOF
Output:
------
soumyadeep@Ubuntu:~/Soumyadeep_Adak/ShellScript$ sh Ass2Q4.sh
Menu:
1. Number of presently active users
2. Display some desired number of lines from top of a file
3. Update the access time of a given file to current time
4. Exit
Choose an option (1-4): 1
Number of presently active users: 1
Menu:
1. Number of presently active users
2. Display some desired number of lines from top of a file
3. Update the access time of a given file to current time
4. Exit
Choose an option (1-4): 3
Enter the file name: Ass2Q3textfile
Access time before updating:
Access time: 2024-09-07 21:24:20.527901706 +0530
Access time of 'Ass2Q3textfile' updated to current time.
Access time: 2024-09-08 16:58:58.605361486 +0530
Menu:
1. Number of presently active users
2. Display some desired number of lines from top of a file
3. Update the access time of a given file to current time
4. Exit
Choose an option (1-4): 2
Enter the file name: Ass2Q3textfile
Enter the number of lines to display: 2
dfbhdfg fghdgh dg
derghdfghr
Menu:
1. Number of presently active users
2. Display some desired number of lines from top of a file
3. Update the access time of a given file to current time
4. Exit
Choose an option (1-4): 5
Invalid option
Menu:
1. Number of presently active users
2. Display some desired number of lines from top of a file
3. Update the access time of a given file to current time
4. Exit
Choose an option (1-4): 4
Exiting.
EOF
#----------------------------------------------------------------------------------------------------------------
