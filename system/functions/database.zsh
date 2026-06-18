function database() {
    
	# Selector
    local OPTION=${1}
    local DBNAME=${2}

    case $OPTION in
		"create" )

			# Comment
			database_create "$DBNAME"

		;;
		"delete" )

			# Comment
			database_delete "$DBNAME"

		;;
		"export" )

			# Export database if it exist in mysql
			if [ -d "${mysql_databases_path}/${2}" ]; then

				wp db export "./${2}.sql"

			else

				echo "Database does not exist..."

			fi

		;;
		"import" )

			wp db import "./${2}.sql"

		;;
		* )

			echo "Your Folders are : [ 
			First | Second ] (* Edit)"

		;;
	esac
}

