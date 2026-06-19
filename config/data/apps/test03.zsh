function test03() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME='test03'
	local FRAMEWORK="wordpress"
	local DBNAME='test03'
	local DBUSER="root"
	local DBPASS="root"

	# Directories
	local DIR=/home/fortunate/Host/Apps/test03

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else
		cd $DIR

		. "${actions}/wordpress.zsh"
		
	fi

}