#----------------------------------------------------Ass2Q4.sh----------------------------------------------------
#WORK IN PROGRESS
: '
Write a menu driven shell script for the following options:
(i) Number of presently active users
(ii) Displaying some desired number of lines from top of a file
(iii) Updating the access time of a given file to current time
(iv) If the user gives some invalid choice it will prompt "Invalid option" message
'
#!/bin/bash

while true; do
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
                touch "$file"
                echo "Access time of '$file' updated to current time."
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

#----------------------------------------------------------------------------------------------------------------
