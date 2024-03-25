
# program dirs
local MY_THINGS="${MY_HOME}/Things"
local MY_FUNCTIONS="${MY_HOME}/Functions"
local MY_TEMPLATES="${MY_HOME}/Templates"

# Parameters Before All
local THING="${1}"  # Thing
local DO="${2}"     # Do

# Functions

# Header
local F_HEADER="${MY_FUNCTIONS}/Function_Header.zsh"

# Body
local F_BODY="${MY_FUNCTIONS}/Function_Body.zsh"

# Thing
local F_THING="${MY_THINGS}/${THING}.zsh"

# Home
local F_THING_HOME="${MY_FUNCTIONS}/${THING}/${THING}_Home.zsh"

# Options
local F_THING_OPTIONS="${MY_FUNCTIONS}/${THING}/${THING}_Options.zsh"