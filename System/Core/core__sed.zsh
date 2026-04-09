# SED Find Replace
function sed_find_replace() {


    local Old=${1}
    local New=${2}
    local Filename=${3}

    # SED Find Replace
    sed -i 's|'${Old}'|'${New}'|g' ${Filename}
}

# SED Add to path
function sed_add_to_path() {

    # SED Find Replace
    sed -i 's|:$PATH|:'${1}':$PATH|g' ${HOME}/.zshrc
}