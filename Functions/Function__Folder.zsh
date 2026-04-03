function Folder() {

	# Selector
    local OPTION=${1}
    local FOLDER=${2}

    case $OPTION in
		"Create" )

			# Comment

            if [ ! -d "${1}" ]; then
                folder_create "$FOLDER"
            else
                echo "Folder already exists"
            fi

		;;
		"Read" )

			# Comment
			# folder_read
			cd $FOLDER
			echo "Files :"
			echo "#######"
            print -l *(.)
            echo "\nDirectories :"
            echo "#############"
            print -l *(/)

		;;
		"Open" )

			# Comment
			folder_open

		;;
		"Edit" )

			# Comment
			folder_edit $FOLDER

		;;
		"Delete" )

			# Comment
			folder_delete $FOLDER

		;;
		"Enter" )

			# Comment
			folder_enter $FOLDER

		;;
		"Exit" )

			# Comment
			folder_exit

		;;
		"Copy" )

			# Comment
			# folder_copy ${2} ${3}

            # check if folder exists
            if [ ! -d "${2}" ]; then

                echo "Folder does not exist"

			# if destination exit
            elif [ -d "${3}" ]; then

                echo "Folder already exists"

            else

                folder_copy ${2} ${3}

            fi

		;;
		"Move" )

            # check if folder exists
            if [ ! -d "${2}" ]; then

                echo "Folder does not exist"

			# if destination exit
            elif [ -d "${3}" ]; then

                echo "Folder already exists"

            else

                folder_move ${2} ${3}

            fi

		;;
		* )

			echo "You've entered a wrong option. Your options are : \nCreate\nRead\nOpen\nEdit\nDelete\nEnter\nExit\nCopy\nMove"

		;;
	esac

}
