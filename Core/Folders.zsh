
# Folder Create
function folder-create() {
    mkdir ${1}
}

# Folder Read
function folder-read() {
    trash ${1}
}

# Folder Edit
function folder-edit() {

    local CURRENTNAME=""
    
    mv ${CURRENTNAME} ${1}
}

# Folder Delete
function folder-delete() {
    trash ${1}
}

# Folder Enter
function folder-enter() {
    cd ${1}
}

# Folder Exit
function folder-exit() {
    cd ..
}