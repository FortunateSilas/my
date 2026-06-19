function test02() {

	# Selector
    local OPTION=${1}
	
	# Config
	local APPNAME='test02'
	local FRAMEWORK="wordpress"
	local DBNAME='test02'
	local DBHOST="DBUSER"
	local DBPASS=""

	# Directories
	local DIR=/home/fortunate/Host/Apps/test02

	if [ ! ${1} ]; then
	
		# No parameter specified
		cd $DIR

	else
		cd $DIR

		. "${actions}/wordpress.zsh"
		
	fi

}