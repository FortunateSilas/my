
# Folder

function FolderCreate() {

    mkdir ${1}
}

# File

function FileCreate() {

    touch ${1}.${2}
}

function FileWriteAppend() {

    local CONTENT="${1}"
    local FILENAME="${2}"
    local EXTENSION="${3}"

    #
    echo "${CONTENT}" &>"./${FILENAME}.${EXTENSION}"

}

function fileRead() {

    local FILE="${1}"
    local EXTENSION="${2}"

    # Define an empty array
    local lines=()

    # Read lines from the file using a while loop
    while IFS= read -r line; do

        # Add each line to the array
        lines+=("$line")
    done < "${FILE}.${EXTENSION}"  # Replace "filename.txt" with the path to your file

    # Print the contents of the array
    # echo "Contents of the array:"
    printf '%s\n' "${lines[${3}]}"


}