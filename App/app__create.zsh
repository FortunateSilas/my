# user input : project name
echo "Enter your App/Website's name : "
echo "=============================== "
read APPNAME_INPUT

local APPNAME="${(C)APPNAME_INPUT}"

echo "You typed : ${APPNAME}"

# shell_newline

# cd apps
Folder Enter ${HOST_A}

# create database
Database Create ${APPNAME}

# shell_newline

# user input : select framework
echo "Available Frameworks : "
echo "====================== "

echo "1. Blank"
echo "2. Wordpress"

# shell_newline

echo "Select Framework by Typing Number : "
echo "=================================== "
read APPFRAMEWORK_INPUT

local APPFRAMEWORK="${APPFRAMEWORK_INPUT}"

# shell_clear

case "${APPFRAMEWORK}" in
    "1" )
        echo "You have selected : Blank "
        echo "========================= "
        echo "Select Option 2, Cause Blank Blueprints are not yet available."
    ;;
    "2" )

        echo "You have selected : WordPress "
        echo "============================= "
        . "${SCRIPTS_AF}/wordpress_create.zsh"
        # copy bin/framework to apps/project
        app_wordpress ${APPNAME}

    ;;
    * )
        echo "Select a framework by typing a number : "
        echo "======================================= "
        echo "1. Blank"
        echo "2. Wordpress"
    ;;
esac

# generate ssl
valet secure

# Refresh Shell
# shell_newline

# shell_refresh


# Read YesNo
read -s -k "?[${APPNAME}] Created successfully. Open in browser? | [ Y / N ]" yn

# Case yn
case "${yn}" in
    "y" )
    
        valet open

    ;;

    "n" )
    
        echo "Okay, Enjoy Creating..."

    ;;

    * ) 
        clear
        echo "Enter [y] or [n]"
    ;;
esac
