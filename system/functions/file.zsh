function file() {
    
	# Selector
    local OPTION=${1}
    local FILE=${2}
    local FILE2=${3}

    case $OPTION in
		"create" )

			# Comment
			file_create "$FILE"

		;;
		"rename" )

			# Comment
			file_rename ${FILE} ${FILE2}

		;;
		"edit" )

			# Comment
			file_edit $FILE

		;;
		"delete" )

			# Comment
			file_delete $FILE

		;;
		"read" )

			# Comment
			file_read $FILE

		;;
		"read_line" )

            local LINE=${3}

			# Comment
			file_read_line $FILE $LINE

		;;
		"find_replace" )

			# Comment
			sed_find_replace ${2} ${3} ${4}

		;;
		"write" )

            local MESSAGE=${3}

			# Comment
			file_write $FILE $MESSAGE

		;;
		"wipe" )

			# Comment
			file_wipe $FILE

		;;
		"copy" )

			# Comment
			file_copy $FILE $FILE2

		;;
		* )

			echo "Your FILEs are : [ 
			First | Second ] (* Edit)"

		;;
	esac

}source "/home/fortunate/my/system/functions/file.zsh"
source "/home/fortunate/my/system/functions/file.zsh"
source "/home/fortunate/my/system/functions/file.zsh"
source "/home/fortunate/my/system/functions/file.zsh"
source "/home/fortunate/my/system/functions/file.zsh"
