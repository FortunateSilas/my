# Files

# File Create
function file_copy() {
    # Create File
    cp -f "${1}" "${2}"
}

# File Create
function file_create() {
    # Create File
    touch "${1}"
}

# File Edit
function file_edit() {

    # Edit File
    gedit "${1}"
}

# File Edit
function file_delete() {

    # Edit File
    rm -f "${1}"
}

# File Rename
function file_rename() {

    # Edit File
    mv "${1}" "${2}"
}

# File Read
function file_read() {

    local FILE="${1}"

    # Define an empty array
    local lines=()

    # Read File

    # Read lines from the file using a while loop
    while IFS= read -r line; do

        # Add each line to the array
        lines+=("$line")

    # File & Extension
    done < "${FILE}"

    # Print the contents of the array
    printf '%s\n' "${lines[@]}"

}

# File Read by Line
function file_read_line() {

    local FILE="${1}"

    # Define an empty array
    local lines=()

    # Read File

    # Read lines from the file using a while loop
    while IFS= read -r line; do

        # Add each line to the array
        lines+=("$line")

    # File & Extension
    done < "${FILE}"

    # Print the contents of the array
    printf '%s\n' "${lines[${2}]}"

    # ------------------------------------------
    # Usage: 
    # file-read-line "nameoffile" ".txt" 3

}

# File Write
function file_write() {

    # Variables
    local FILE=${1}
    local MESSAGE=${2}

    echo "${MESSAGE}" >> ${FILE}
}

# File Empty Contents
function file_wipe() {

    # Variables
    local FILE=${1}

    echo -n > ${FILE}

}


