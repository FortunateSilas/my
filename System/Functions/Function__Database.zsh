function Database() {
    
	# Selector
    local OPTION=${1}
    local DBNAME=${2}

    case $OPTION in
		"Create" )

			# Comment
			database_create "$DBNAME"

		;;
		"Delete" )

			# Comment
			database_delete "$DBNAME"

		;;
		"Export" )

			# Export database if it exist in mysql
			if [ -d "${MYSQL_DATABASES_PATH}/${2}" ]; then

				wp db export "./${2}.sql"

			else

				echo "Database does not exist..."

			fi

		;;
		"Import" )

			wp db import "./${2}.sql"

		;;
		* )

			echo "Your Folders are : [ 
			First | Second ] (* Edit)"

		;;
	esac
}