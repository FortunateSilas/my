# Parameters Before All
local THING="${1}"  # Thing
local DO="${2}"     # Do

#######################################

# Theme
# Header
local F_HEADER="${MY_DATA_THEME}/Header.zsh"

# Body
local F_BODY="${MY_DATA_THEME}/Body.zsh"

# Thing
local F_THING="${MY_THINGS}/${THING}.zsh"

# Options
local F_THING_OPTIONS="${MY_FUNCTIONS}/${THING}/Options.zsh"

# Do
local F_THING_OPTIONS="${MY_FUNCTIONS}/${THING}/Options.zsh"

function DoSomething() {

    local MY_FILE="${MY_FUNCTIONS}/${THING}/${DO}/${1}.zsh"

    . ${MY_FILE}
    
}