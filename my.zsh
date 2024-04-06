
# Define Essential Variables
source "_/EV"

# Get Settings
. ${MY_SETTINGS}

# Get Core Functions

# define Essential Variables
function my() {

    if [ ! -d "${HOME}/Host" ]; then

        # Init Host
        . ${MY_INIT}

    else

        Clear

        # Get Header
        . ${F_HEADER}

        ######################################

        if [ ! ${1} ]; then

            echo "Loading my"

        elif [ ! ${2} ]; then

            echo "Loading my / ${1}"

            # Show Thing Options
            . ${F_THING}

        else

            echo "Loading my / ${1} / ${2}"

            # Get Functions Body
            . ${F_BODY}
            
        fi

    fi

}
