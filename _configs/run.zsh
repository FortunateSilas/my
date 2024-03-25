# runner
# program dirs
local MY_THINGS="${MY_HOME}/Things"
local MY_TEMPLATES="${MY_HOME}/templates"


# parameters

# Thing
local THING="${1}"

# Do
local DO="${2}"

# my Host Scream

# Template
# local OBJECT="${3}"

if [ ! ${2} ]; then

    . ${MY_THINGS}/${(C)THING}.zsh

else

    . ${MY_THINGS}/${THING}/${DO}.zsh

fi
