# Load Site

if [ ! ${1} ]; then

    local THIS_HEADER="my"

elif [ ! ${2} ]; then

    local THIS_HEADER="my / ${1}"

else

    local THIS_HEADER="my / ${1} / ${2}"

fi

echo "Header: ${THIS_HEADER}"

echo "#########################################################"
echo "\n"