function blank() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME="APPNAME"
	local FRAMEWORK="FRAMEWORK"
	local DBNAME="DBNAME"
	local DBHOST="DBUSER"
	local DBPASS="DBPASS"

	# Directories
	local DIR="${host_a}/blank"

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else
		cd $DIR

		. "${actions}/blank.zsh"
		
	fi

}