function File() {
    
	# Selector
    local OPTION=${1}
    local FILE=${2}
    local FILE2=${3}

    case $OPTION in
		"Create" )

			# Comment
			file_create "$FILE"

		;;
		"Rename" )

			# Comment
			file_rename ${FILE} ${FILE2}

		;;
		"Edit" )

			# Comment
			file_edit $FILE

		;;
		"Delete" )

			# Comment
			file_delete $FILE

		;;
		"Read" )

			# Comment
			file_read $FILE

		;;
		"ReadLine" )

            local LINE=${3}

			# Comment
			file_read_line $FILE $LINE

		;;
		"FindReplace" )

			# Comment
			sed_find_replace ${2} ${3} ${4}

		;;
		"Write" )

            local MESSAGE=${3}

			# Comment
			file_write $FILE $MESSAGE

		;;
		"Wipe" )

			# Comment
			file_wipe $FILE

		;;
		"Copy" )

			# Comment
			file_copy $FILE $FILE2

		;;
		* )

			echo "Your FILEs are : [ 
			First | Second ] (* Edit)"

		;;
	esac

}