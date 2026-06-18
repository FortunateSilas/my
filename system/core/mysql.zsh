# create database
function database_create() {
    mysql -u "${mysql_username}" --password="${mysql_password}" -e 'create database '${1}';'
}

# delete database
function database_delete() {
    mysql -u "${mysql_username}" --password="${mysql_password}" -e 'drop database '${1}';'
}

# find replace in database
function database_find_replace() {
    local db="$1"
    local find="$2"
    local replace="$3"
    # escape single quotes in find and replace for sql
    find_escaped=$(printf '%s\n' "$find" | sed "s/'/''/g")
    replace_escaped=$(printf '%s\n' "$replace" | sed "s/'/''/g")
    mysql -u "${mysql_username}" --password="${mysql_password}" "${db}" <<eof
$(mysql -u "${mysql_username}" --password="${mysql_password}" -e "
select concat('update \`', table_name, '\` set \`', column_name, '\` = replace(\`', column_name, '\`, ''${find_escaped}'', ''${replace_escaped}'');')
from information_schema.columns
where table_schema = '${db}' and data_type in ('char', 'varchar', 'tinytext', 'text', 'mediumtext', 'longtext');
" | tail -n +2)
eof
}