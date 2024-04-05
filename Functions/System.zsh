
# System Aliases

# ESSENTIALS ########################################

# ZSH Config
function Config() {
    sudo nano ${HOME}/.zshrc
}

# ZSH Refresh
function Refresh() {
    source ~/.zshrc
}

# Clear
function Clear() {
    clear
}

function GoToApp() {

    # cd into Apps folder
    Apps

    # Create App folder
    if [ ! -d "${1}" ]; then

        RestM3 "${1} not found, now creating it"

        FolderCreate ${1}

        Rest
        Rest

        read -s -k "?[Apps/${1}] Created. Press [ENTER] to continue."

        Clear

        cd ${1}

    else

        Clear

        cd ${1}

    fi
}

# REST #############################################

# Rest
function Rest() {
    sleep 1
}

# Rest 1 second
function RestM() {

    Clear
	echo -ne "${1}    \r"
		Rest

}

# Rest 2 second
function RestM2() {

    RestM "${1}."
    RestM "${1}.."

}

# Rest 3 second
function RestM3() {

    RestM "${1}."
    RestM "${1}.."
    RestM "${1}..."

}

# Rest 4 second
function RestM4() {

    RestM "${1}."
    RestM "${1}.."
    RestM "${1}..."
    RestM "${1}...."

}

# Rest 5 second
function RestM5() {

    RestM "${1}."
    RestM "${1}.."
    RestM "${1}..."
    RestM "${1}...."
    RestM "${1}....."

}

# REST #############################################