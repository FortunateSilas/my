echo "Enter your App/Website's name : "
echo "=============================== "
read APPNAME_INPUT

local APPNAME="${(C)APPNAME_INPUT}"

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
    sed_find_replace "define( 'DB_USER', 'username_here' );" "define( 'DB_USER', '${MYSQL_USERNAME}' );" "wp-config.php"
    sed_find_replace "define( 'DB_PASSWORD', 'password_here' );" "define( 'DB_PASSWORD', '${MYSQL_PASSWORD}' );" "wp-config.php"

    echo "Create Database ${MYSQL_USERNAME}, ${MYSQL_PASSWORD}, ${APPNAME}"
    mysql -u "${MYSQL_USERNAME}" --password="${MYSQL_PASSWORD}" -e 'CREATE DATABASE '${APPNAME}';'

    echo "Install Wordpress ${WP_USER_NAME} ${USER_EMAIL} ${WP_USER_PASSWORD}"
    wp core install --url="https://${APPNAME}.${VALET_DOMAIN}" --title="${APPNAME}" --admin_user="${WP_USER_NAME}" --admin_email="${USER_EMAIL}" --admin_password="${WP_USER_PASSWORD}" --skip-email

    # Install SSL Certificate
    valet secure

    # Trust Certificate
    sudo trust anchor --store ${VALET_CERTIFICATES}/${APPNAME}.${VALET_DOMAIN}.crt

fi