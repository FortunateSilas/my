# Create Database
function database_create() {
    mysql -u "${MYSQL_USERNAME}" --password="${MYSQL_PASSWORD}" -e 'CREATE DATABASE '${1}';'
}

# Delete Database
function database_delete() {
    mysql -u "${MYSQL_USERNAME}" --password="${MYSQL_PASSWORD}" -e 'DROP DATABASE '${1}';'
}