cd "${HOST_A}"
echo "Enter your App/Website's name : "
echo "=============================== "
read APPNAME_INPUT

local APPNAME="${(C)APPNAME_INPUT}"

echo "this will delete \"${APPNAME} \" from your Apps folder. (Coming Soon)"

# Delete Database
mysql -u "${MYSQL_USERNAME}" --password="${MYSQL_PASSWORD}" -e 'DROP DATABASE '${APPNAME}';'

# Delete App's Folder
rm -rf ${APPNAME}

# Delete SSL Certificate
valet unsecure ${APPNAME}

echo "Done. App Deleted Successfully!!!"
