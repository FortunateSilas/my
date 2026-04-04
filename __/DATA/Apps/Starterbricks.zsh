function Starterbricks() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME='Starterbricks'
	local FRAMEWORK="Wordpress"
	local DBNAME='Starterbricks'
	local DBHOST="DBUSER"
	local DBPASS=""

	# Directories
	local DIR=/home/fortunate/Host/Apps/Starterbricks

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else
		cd $DIR

		. "${SCRIPTS_FA}/wp_actions.zsh"
		
	fi

}