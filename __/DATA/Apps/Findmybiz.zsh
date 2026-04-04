function Findmybiz() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME='Findmybiz'
	local FRAMEWORK="Wordpress"
	local DBNAME='Findmybiz'
	local DBHOST="DBUSER"
	local DBPASS=""

	# Directories
	local DIR=/home/fortunate/Host/Apps/Findmybiz

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else
		cd $DIR

		. "${SCRIPTS_FA}/wp_actions.zsh"
		
	fi

}