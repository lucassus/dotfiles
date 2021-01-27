# Load node version manager
export NVM_DIR="${HOME}/.nvm"
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
export NVM_AUTO_USE=true

# It uses this plugin https://github.com/lukechilds/zsh-nvm

# Auto switch nodejs version
function __use_project_node() {
  if [[ -s .nvmrc ]] ; then
    nvm use
  fi
}

chpwd_functions=("${chpwd_functions[@]}" __use_project_node)
