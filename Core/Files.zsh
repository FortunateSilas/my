# Files

# File Create
function file-create() {

    # Create File
    touch ${1}

}

# File Read
function file-read() {

    local FILE="${1}"
    local EXTENSION="${2}"

    # Define an empty array
    local lines=()

    # Read File

    # Read lines from the file using a while loop
    while IFS= read -r line; do

        # Add each line to the array
        lines+=("$line")

    # File & Extension
    done < "${FILE}.${EXTENSION}"

    # Print the contents of the array
    printf '%s\n' "${lines[@]}"

}

# File Read by Line
function file-read-line() {

    local FILE="${1}"
    local EXTENSION="${2}"

    # Define an empty array
    local lines=()

    # Read File

    # Read lines from the file using a while loop
    while IFS= read -r line; do

        # Add each line to the array
        lines+=("$line")

    # File & Extension
    done < "${FILE}.${EXTENSION}"

    # Print the contents of the array
    printf '%s\n' "${lines[${3}]}"

    # ------------------------------------------
    # Usage: 
    # file-read-line "nameoffile" ".txt" 3

}

# File Edit