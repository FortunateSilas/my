# Design the flow

# Create App folder
folder-enter ${MY_APPS}

echo "Enter name of the App"
echo "\n"

read THISAPPNAME
local AppName="${(C)THISAPPNAME}"
local AppInfoFile="${(C)THISAPPNAME}.txt"

if [ ! -d "${MY_APPS}/${AppName}"  ]; then\s

    # Create Folder
    RestM4 "Creating ${AppName}"
    folder-create ${AppName}

    # 1 Second Break
    Rest

    # Enter folder
    folder-enter ${AppName}

    # 1 Second Break
    Rest

    # Choose type

    # Secure Folder
    RestM4 "Securing ${AppName}"

    # create "appname.info.txt"
    RestM4 "Populating ${AppInfoFile}"
    file-create "${AppInfoFile}"

else

    # This
    echo "Folder: ${AppName} is already created. Try another name."

    # Exit
    folder-enter ${MY_APPS}

fi