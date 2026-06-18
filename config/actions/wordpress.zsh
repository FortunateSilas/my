
case "${OPTION}" in
    "Folder" )

        # done
        Folder Open ${DIR}

    ;;
    "Browse" )

        # Upgrade
        valet open

    ;;
    "Update" )

        # Upgrade
        wp core update

    ;;
    "Database" )

        case "${2}" in

            "Export" )

                Database Export ${3}

            ;;
            "Import" )

                Database Import ${3}

            ;;
            * )
            ;;
        esac

    ;;
    "Plugin" )

        # Upgrade
        echo "This will manage single plugins and bundled plugins"

    ;;
    "Info" )

        # Upgrade
        echo "This will manage single plugins and bundled plugins"

    ;;
    * )

        echo "Your options are : [ 
        INIT | UPGRADE |  ]"

    ;;
esac