function my() {

    # define my host
    local MY_HOST="${HOME}/Host"

    # define my home
    local MY_HOME="${HOME}/my"
    local MY_DATA="${MY_HOME}/_data"
    local MY_CONFIGS="${MY_HOME}/_configs"

    # define defaults
    local MY_INIT="${MY_CONFIGS}/init.zsh"
    local MY_SETTINGS="${MY_CONFIGS}/settings.zsh"

    # get settings
    . ${MY_SETTINGS}


    ##############################

    # init
    . ${MY_INIT}

    if [ -d "${MY_HOST}" ]; then
        echo "Host folder found"
        echo "${MY_HOST}"
    else
        echo "Host folder not found"
        echo "${MY_HOST}"
    fi


    ##############################



}
