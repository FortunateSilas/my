# Valet Secure
function This() {
    
    if [ ! "${1}" ]; then

        echo "This, is a quick function for folders"
        echo "\n"
        echo "Options:"
        echo "````````"
        echo "Archive"
        echo "Backup"
        echo "Delete"
        echo "Info"
        echo "Secure"
        echo "\n"

        read OPTION

        # Run Command
        . ${MY_THIS}/${OPTION}.zsh


    else
        # Must get file
        . ${MY_THIS}/${OPTION}.zsh
    fi
    
}