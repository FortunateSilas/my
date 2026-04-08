echo "Enter your App/Website's name : "
echo "=============================== "
read APPNAME_INPUT

local APPNAME="${(L)APPNAME_INPUT}"

if [[ -d "${APPNAME}" ]]; then

    echo "App/Website \"${APPNAME}\" already exists. Please choose a different name."

else

    echo "You typed : ${APPNAME}"

    echo "Create & Enter App's Folder"
    mkdir ${APPNAME} && cd ${APPNAME}

    # Install SSL Certificate
    valet secure

    # Trust Certificate
    # sudo trust anchor --store ${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.crt

    cp ${DATA_T}/Blank.zsh ${DATA_A}/${APPNAME}.zsh

    echo "Updating Data file : "
    echo "==================== "

    sed_find_replace 'function Blank() {' "function ${APPNAME}() {" "${DATA_A}/${APPNAME}.zsh"
    sed_find_replace 'APPNAME="APPNAME"' "APPNAME='${APPNAME}'" "${DATA_A}/${APPNAME}.zsh"

    sed_find_replace 'FRAMEWORK="FRAMEWORK"' 'FRAMEWORK="Blank"' "${DATA_A}/${APPNAME}.zsh"

    sed_find_replace 'DBNAME="DBNAME"' "DBNAME='${APPNAME}'" "${DATA_A}/${APPNAME}.zsh"

    sed_find_replace 'DBUSER="DBUSER"' 'DBHOST="root"' "${DATA_A}/${APPNAME}.zsh"

    sed_find_replace 'DBPASS="DBPASS"' 'DBPASS=""' "${DATA_A}/${APPNAME}.zsh"

    sed_find_replace 'local DIR="${HOST_A}/Blank"' "local DIR="${HOST_A}/${APPNAME}"" "${DATA_A}/${APPNAME}.zsh"

    source ~ /.zshrc
    source ~ /.zshrc

fi