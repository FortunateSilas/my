# Site Options

if [ "${2}" = "Add" ]; then

    echo "Select what type of Site you're adding:"

    echo "1. Blank"
    echo "2. Wordpress"
    echo "3. Laravel"
    echo "\n"

else

    # skip

fi

if [ "${2}" = "Delete" ]; then

    echo "Are you sure you want to delete Site?"

    # echo "1. Yes"
    # echo "2. No"
    # echo "\n"

    dirs=(Site1 Site2 Site3)

    echo "There are ${#dirs[@]} dirs in the current path"

    let i=1

    for dir in "${dirs[@]}"; do
        echo "$((i++)) $dir"
    done

else

    # skip

fi

if [ "${2}" = "Update" ]; then

    echo "Want to update?"

    echo "\n"
    echo "1. Y"
    echo "2. N"
    echo "\n"

else

    # skip

fi