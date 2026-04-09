# Create Database
function database_create() {
    mysql -u "${MYSQL_USERNAME}" --password="${MYSQL_PASSWORD}" -e 'CREATE DATABASE '${1}';'
}

# Delete Database
function database_delete() {
    mysql -u "${MYSQL_USERNAME}" --password="${MYSQL_PASSWORD}" -e 'DROP DATABASE '${1}';'
}

# Find Replace in Database
function database_find_replace() {
    local db="$1"
    local find="$2"
    local replace="$3"
    # Escape single quotes in find and replace for SQL
    find_escaped=$(printf '%s\n' "$find" | sed "s/'/''/g")
    replace_escaped=$(printf '%s\n' "$replace" | sed "s/'/''/g")
    mysql -u "${MYSQL_USERNAME}" --password="${MYSQL_PASSWORD}" "${db}" <<EOF
$(mysql -u "${MYSQL_USERNAME}" --password="${MYSQL_PASSWORD}" -e "
SELECT CONCAT('UPDATE \`', TABLE_NAME, '\` SET \`', COLUMN_NAME, '\` = REPLACE(\`', COLUMN_NAME, '\`, ''${find_escaped}'', ''${replace_escaped}'');')
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = '${db}' AND DATA_TYPE IN ('char', 'varchar', 'tinytext', 'text', 'mediumtext', 'longtext');
" | tail -n +2)
EOF
}