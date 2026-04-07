function Blank() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME="APPNAME"
	local FRAMEWORK="FRAMEWORK"
	local DBNAME="DBNAME"
	local DBHOST="DBUSER"
	local DBPASS="DBPASS"

	# Directories
	local DIR="${HOST_A}/Blank"

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else
		cd $DIR

		. "${SCRIPTS_FA}/bl_actions.zsh"
		
	fi

}