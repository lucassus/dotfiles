# Load node version manager
export NVM_DIR="${HOME}/.nvm"
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
export NVM_AUTO_USE=true
zplug "lukechilds/zsh-nvm"

# TODO: The old way, probably I should delete it
#source /usr/local/opt/nvm/nvm.sh
#
#nvm() {
#  if [[ -d "/usr/local/opt/nvm" ]]; then
#    NVM_DIR="/usr/local/opt/nvm"
#    export NVM_DIR
#
#    # shellcheck disable=SC1090
#    source "${NVM_DIR}/nvm.sh"
#    if [[ -e ~/.nvm/alias/default ]]; then
#      PATH="${PATH}:${HOME}.nvm/versions/node/$(cat ~/.nvm/alias/default)/bin"
#    fi
#
#    # invoke the real nvm function now
#    nvm "$@"
#  else
#    echo "nvm is not installed" >&2
#    return 1
#  fi
#}

# Auto switch nodejs version
#function __use_project_node() {
#  if [[ -s .nvmrc ]] ; then
#    nvm use
#  fi
#}
#
#chpwd_functions=("${chpwd_functions[@]}" __use_project_node)
