# Functions

# Get Essential Variables
local EV="${HOME}/my/_ev.zsh"
. ${EV}

function Config() {
    sudo nano ${HOME}/.zshrc
}

function Refresh() {
    source ~/.zshrc
}

function Host() {
    cd ${HOST}
    echo "Welcome to myHost."
}