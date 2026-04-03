function Test03() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME='Test03'
	local FRAMEWORK="Wordpress"
	local DBNAME='Test03'
	local DBHOST="DBUSER"
	local DBPASS=""

	# Directories
	local DIR=/home/fortunate/Host/Apps/Test03

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else
		cd $DIR

		. "${SCRIPTS_FA}/wp_actions.zsh"
		
	fi

}