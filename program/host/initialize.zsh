cd ${HOME}

mkdir ${host}
mkdir ${host_a}
mkdir ${host_d}
mkdir ${host_f}

cd ${host_a}

valet park

cd ${host_f}

mkdir Blank && cd Blank

valet link && valet secure


cd ${HOME}

# fix nginx config file
sed_find_replace "text/x-component;" "text/x-component;\n\nclient_max_body_size 2048M;\nclient_body_buffer_size 1024k;\nclient_body_timeout 240s;" ${nginx_config}

# fix php.ini file
sed_find_replace "max_execution_time = 30" "max_execution_time = 7200" ${php_ini}
sed_find_replace "max_input_time = 60" "max_input_time = 7200" ${php_ini}
sed_find_replace "memory_limit = 128M" "memory_limit = 512M" ${php_ini}
sed_find_replace "post_max_size = 8M" "post_max_size = 2048M" ${php_ini}
sed_find_replace "upload_max_filesize = 2M" "upload_max_filesize = 2048M" ${php_ini}
sed_find_replace "max_file_uploads = 20" "max_file_uploads = 2000" ${php_ini}
sed_find_replace "default_socket_timeout = 60" "default_socket_timeout = 7200" ${php_ini}

echo "Done. Host Setup Successfully!!!"
