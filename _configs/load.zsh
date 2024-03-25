# Load

# parameters
###################################

# Thing
local THING="${1}"

# Do
local DO="${2}"

# my Host Scream

# Template
# local OBJECT="${3}"

if [ ! ${2} ]; then

    # Configure Things
    . ${MY_THINGS}/${(C)THING}.zsh

else

    # Do Things
    . ${MY_THINGS}/Thing/Do.zsh

fi
