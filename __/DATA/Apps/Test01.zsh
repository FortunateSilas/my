function Test01() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME='Test01'
	local FRAMEWORK="Wordpress"
	local DBNAME='Test01'
	local DBHOST="DBUSER"
	local DBPASS=""

	# Directories
	local DIR=/home/fortunate/Host/Apps/Test01

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else
		cd $DIR

		. "${SCRIPTS_FA}/wp_actions.zsh"
		
	fi

}