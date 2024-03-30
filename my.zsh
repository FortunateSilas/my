
# Get Essential Variables
local EV="${HOME}/my/_ev.zsh"
. ${EV}

. ${MY_ALIASES}

function my() {

    # Init
    . ${MY_INIT}

    # get settings
    . ${MY_SETTINGS}

    ##############################

    # Do Things
    . ${MY_CONFIGS}/Load.zsh

}
