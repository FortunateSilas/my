
case "${OPTION}" in
    "Folder" )

        # done
        Folder Open ${DIR}

    ;;
    "Browse" )

        # Upgrade
        valet open

    ;;
    * )

        echo "Your options are : [ 
        INIT | UPGRADE |  ]"

    ;;
esac