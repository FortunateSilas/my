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

    echo "Download Wordpress"
    wp core download

    echo "Rename config file"
    mv wp-config-sample.php wp-config.php

    echo "Edit config file"
    sed_find_replace "define( 'DB_NAME', 'database_name_here' );" "define( 'DB_NAME', '${APPNAME}' );" "wp-config.php"
    sed_find_replace "define( 'DB_USER', 'username_here' );" "define( 'DB_USER', '${mysql_username}' );" "wp-config.php"
    sed_find_replace "define( 'DB_PASSWORD', 'password_here' );" "define( 'DB_PASSWORD', '${mysql_password}' );" "wp-config.php"

    echo "Create Database ${mysql_username}, ${mysql_password}, ${APPNAME}"
    mysql -u "${mysql_username}" --password="${mysql_password}" -e 'CREATE DATABASE '${APPNAME}';'

    echo "Install Wordpress ${wp_user_name} ${user_email} ${wp_user_password}"
    wp core install --url="https://${APPNAME}.${valet_domain}" --title="${APPNAME}" --admin_user="${wp_user_name}" --admin_email="${user_email}" --admin_password="${wp_user_password}" --skip-email

    # Install SSL Certificate
    valet secure

    # Trust Certificate
    # sudo trust anchor --store ${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.crt

    cp ${data_templates}/wordpress.zsh ${data_a}/${APPNAME}.zsh

    echo "Updating Data file : "
    echo "==================== "

    sed_find_replace 'function wordpress() {' "function ${APPNAME}() {" "${data_a}/${APPNAME}.zsh"
    sed_find_replace 'APPNAME="APPNAME"' "APPNAME='${APPNAME}'" "${data_a}/${APPNAME}.zsh"

    sed_find_replace 'FRAMEWORK="FRAMEWORK"' 'FRAMEWORK="wordpress"' "${data_a}/${APPNAME}.zsh"

    sed_find_replace 'DBNAME="DBNAME"' "DBNAME='${APPNAME}'" "${data_a}/${APPNAME}.zsh"

    sed_find_replace 'DBUSER="DBUSER"' 'DBUSER="root"' "${data_a}/${APPNAME}.zsh"

    sed_find_replace 'DBPASS="DBPASS"' 'DBPASS="root"' "${data_a}/${APPNAME}.zsh"

    sed_find_replace 'local DIR="${host_a}/wordpress"' "local DIR="${host_a}/${APPNAME}"" "${data_a}/${APPNAME}.zsh"

    source ~/.zshrc

fi