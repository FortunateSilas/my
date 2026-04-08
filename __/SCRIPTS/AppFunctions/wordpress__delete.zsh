cd "${HOST_A}"
echo "Enter your App/Website's name : "
echo "=============================== "
read APPNAME_INPUT

local APPNAME="${(L)APPNAME_INPUT}"

echo "This will delete \"${APPNAME}\" from your Apps folder. This action is irreversible. Do you want to continue? (y/n) : "

read CONTINUE

if [[ "${CONTINUE}" == "y" ]]; then

    # Delete Database
    mysql -u "${MYSQL_USERNAME}" --password="${MYSQL_PASSWORD}" -e 'DROP DATABASE '${APPNAME}';'

    # Delete App's Folder
    rm -rf ${APPNAME}

    # Delete Data file
    rm ${DATA_A}/${APPNAME}.zsh

    # Delete Nginx Config File
    rm ${VALET_NGINX}/${APPNAME}.${VALET_DOMAIN }

    # Delete SSL Certificate
    valet unsecure ${APPNAME}

    echo "Done. App Deleted Successfully!!!"

else

    echo "Aborting Deletion Process. App is safe :)"

fi

