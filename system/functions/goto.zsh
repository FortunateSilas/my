function goto() {

	# Selector
    local OPTION=${1}

    case "${OPTION}" in
		"host" )

			# Comment
			folder enter $host

		;;
		"apps" )

			# Comment
			folder enter $apps

		;;
		* )

			echo "Your options are : [ 
			First | Second ] (* Edit)"

		;;
	esac
}
