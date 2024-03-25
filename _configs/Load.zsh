# Call Header
. ${F_HEADER}

######################################

# Show Thing Options
. ${F_THING_OPTIONS}

read USER_INPUT

######################################

case "${USER_INPUT}" in
    "${USER_INPUT}" )

        # Get Functions Body
        . ${F_THING}

    ;;
esac