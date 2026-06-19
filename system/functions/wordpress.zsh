function wordpress() {

    

	# Selector
    local OPTION=${1}

    case "${OPTION}" in
		"download" )

            # Download Wordpress
            if [ ! "${2}" ]; then

                # Inside a directory
                wordpress_core download

            else

                # Outside a directory
                wordpress_core download ${2}

            fi

		;;
		"install" )

			# Install Wordpress
            wp core install --url="https://${2}.${valet_domain}" --title="${2}" --admin_user="${user_admin}" --admin_email="${user_email}" --admin_password="${user_password}" --skip-email

            shell_newline

            echo "username & password : "
            echo "===================== "
            echo "username : ${user_admin}"
            echo "password : ${user_password}"

		;;
		"update" )

			# Update Wordpress
            wordpress_core update

		;;
		* )

			echo "You've entered the wrong option"
			echo "Try one of the following options:"
			echo "\ndownload\ninstall\nupdate"

		;;
	esac

}
