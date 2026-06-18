# files

# file copy
function file_copy() {
    # copy file
    cp -f "${1}" "${2}"
}

# file create
function file_create() {
    # create file
    touch "${1}"
}

# file edit
function file_edit() {

    # edit file
    gedit "${1}"
}

# file edit
function file_delete() {

    # edit file
    rm -f "${1}"
}

# file rename
function file_rename() {

    # edit file
    mv "${1}" "${2}"
}

# file read
function file_read() {

    local file="${1}"

    # define an empty array
    local lines=()

    # read file

    # read lines from the file using a while loop
    while ifs= read -r line; do

        # add each line to the array
        lines+=("$line")

    # file & extension
    done < "${file}"

    # print the contents of the array
    printf '%s\n' "${lines[@]}"

}

# file read by line
function file_read_line() {

    local file="${1}"

    # define an empty array
    local lines=()

    # read file

    # read lines from the file using a while loop
    while ifs= read -r line; do

        # add each line to the array
        lines+=("$line")

    # file & extension
    done < "${file}"

    # print the contents of the array
    printf '%s\n' "${lines[${2}]}"

    # ------------------------------------------
    # usage: 
    # file-read-line "nameoffile" ".txt" 3

}

# file write
function file_write() {

    # variables
    local file=${1}
    local message=${2}

    echo "${message}" >> ${file}
}

# file empty contents
function file_wipe() {

    # variables
    local file=${1}

    echo -n > ${file}

}source "/home/fortunate/my/system/core/files.zsh"
source "/home/fortunate/my/system/core/files.zsh"
source "/home/fortunate/my/system/core/files.zsh"
source "/home/fortunate/my/system/core/files.zsh"
source "/home/fortunate/my/system/core/files.zsh"
