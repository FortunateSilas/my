
# Define Essential Variables
local EV="${HOME}/my/_ev.zsh"

# Get Essential Variables
. ${EV}

# Get Settings
. ${MY_SETTINGS}

# Get Core Functions
source "${MY_CORE}/*"

# define Essential Variables
function my() {

    if [ ! -d "${HOME}/Host" ]; then

        # Init Host
        . ${MY_INIT}

    else

        # Load
        . ${MY_LOAD}

    fi

}
