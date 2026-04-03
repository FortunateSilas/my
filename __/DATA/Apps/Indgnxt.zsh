function Indgnxt() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME='Indgnxt'
	local FRAMEWORK="Wordpress"
	local DBNAME='Indgnxt'
	local DBHOST="DBUSER"
	local DBPASS=""

	# Directories
	local DIR=/home/fortunate/Host/Apps/Indgnxt

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else
		cd $DIR

		. "${SCRIPTS_FA}/wp_actions.zsh"
		
	fi

}