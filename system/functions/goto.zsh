function Goto() {

	# Selector
    local OPTION=${1}

    case "${OPTION}" in
		"Host" )

			# Comment
			Folder Enter $HOST

		;;
		"Apps" )

			# Comment
			Folder Enter $APPS

		;;
		* )

			echo "Your options are : [ 
			First | Second ] (* Edit)"

		;;
	esac
}