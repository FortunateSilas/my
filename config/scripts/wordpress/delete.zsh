cd "${host_a}"
echo "Enter your App/Website's name : "
echo "=============================== "
read APPNAME_INPUT

local APPNAME="${(L)APPNAME_INPUT}"

echo "This will delete \"${APPNAME}\" from your Apps folder. This action is irreversible. Do you want to continue? (y/n) : "

read CONTINUE

if [[ "${CONTINUE}" == "y" ]]; then

    # Delete Database
    mysql -u "${mysql_username}" --password="${mysql_password}" -e 'DROP DATABASE '${APPNAME}';'

    # Delete App's Folder
    rm -rf ${APPNAME}

    # Delete Data file
    rm ${data_a}/${APPNAME}.zsh

    # Delete Nginx Config File
    rm ${valet_nginx}/${APPNAME}.${valet_domain}

    # Delete SSL Certificate
    valet unsecure ${APPNAME}

    echo "Done. App Deleted Successfully!!!"

else

    echo "Aborting Deletion Process. App is safe :)"

fi

