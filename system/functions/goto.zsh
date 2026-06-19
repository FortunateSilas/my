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
			folder enter $host_a

		;;
		* )

			echo "Your options are : [ 
			First | Second ] (* Edit)"

		;;
	esac
}
