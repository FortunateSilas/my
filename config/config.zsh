# Main
# z="${HOME}/my"
# system="${HOME}/my/_"
# settings="${HOME}/my/_/Settings"

# # This Folder
# this_folder=$(printf '%s\n' "${PWD##*/}")

# # Valet Domain
# valet_domain=$(valet domain)

# ################################################

# Directories

# System
system="${HOME}/my/system"
system_c="${system}/core"
system_f="${system}/functions"

# Program
program="${HOME}/my/program"
program_a="${program}/app"
program_h="${program}/host"

# Data
data="${HOME}/my/config/data"
data_a="${HOME}/my/config/data/apps"
data_h="${HOME}/my/config/data/host"
data_templates="${HOME}/my/config/data/templates"
data_tools="${HOME}/my/config/data/tools"

#actions
actions="${HOME}/my/config/actions"

# scripts
scripts="${HOME}/my/config/scripts"
scripts_wp="${HOME}/my/config/scripts/wordpress"
scripts_bl="${HOME}/my/config/scripts/blank"
scripts_nj="${HOME}/my/config/scripts/nodejs"

# Settings
settings="${HOME}/my/config/settings"


# Host
host="${HOME}/Host"
host_a="${host}/Apps"
host_d="${host}/__Data"
host_f="${host_d}/Frameworks"
host_t="${host_d}/Tools"

#############################################################

# System Vars

#############################################################
# Core ######################################################
#############################################################

# valet
valet_domain="www"
valet_path="${HOME}/.config/valet"
valet_logs="${valet_path}/Log"
valet_certificates="${valet_path}/Certificates"
valet_nginx="${valet_path}/Nginx"

#mysql
mysql_username="root"
mysql_password="root"

#php
php_config_path="/etc/php/8.4/fpm"
php_ini="${php_config_path}/php.ini"

# nginx /etc/nginx
nginx_config_path="/etc/nginx"
nginx_config="${nginx_config_path}/nginx.conf"
nginx_sites_available="${nginx_config_path}/sites-available"
nginx_sites_enabled="${nginx_config_path}/sites-enabled"


# Packages

# Functions

#############################################################
# Host ######################################################
#############################################################

# Segments

# 1. Apps
# 2. Tools
# 3. Frameworks

#############################################################
# Apps ######################################################
#############################################################

# user information

# General
user_email="fortunatesilas.art@gmail.com"

# WordPress
wp_user_name="Fortunate"
wp_user_password="aaa"

# Blank


# NodeJs


##########################################

# COMPILE

function COMPILESCRIPTS() {
    local dir="${1}"
    local output_file="${settings}/${2}.zsh"

    # Validate inputs
    if [[ -z "$dir" || -z "$2" ]]; then
        print "Error: COMPILESCRIPTS requires directory and output filename arguments" >&2
        return 1
    fi

    if [[ ! -d "$dir" ]]; then
        print "Error: Directory '$dir' does not exist" >&2
        return 1
    fi

    # Initialize output file
    print -n > "$output_file"

    # Use nullglob to handle empty directories gracefully
    setopt nullglob
    local -a files=("$dir"/*.zsh)

    if (( $#files )); then
        for source_file in "${files[@]}"; do
            if [[ -f "$source_file" && -r "$source_file" ]]; then
                print "source ${source_file}" >> "$output_file"
            fi
        done
    fi
    unsetopt nullglob
}

COMPILESCRIPTS "${system_c}" "scripts_core"
COMPILESCRIPTS "${system_f}" "scripts_functions"
COMPILESCRIPTS "${data_a}" "scripts_apps"

. "${settings}/scripts_core.zsh"
. "${settings}/scripts_functions.zsh"
. "${settings}/scripts_apps.zsh"