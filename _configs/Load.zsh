Clear

# Call Header
. ${F_HEADER}

######################################

# Load Site
# if [ ! ${2} ]; then

#     # Show Thing Options
#     . ${F_THING}

# else

#     # Get Functions Body
#     . ${F_BODY}

# fi

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