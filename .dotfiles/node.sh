# Load node version manager
export NVM_DIR="$HOME/.nvm"
source /usr/local/opt/nvm/nvm.sh

# Autoswitch nodejs version
function __use_project_node() {
  if [[ -s .nvmrc ]] ; then
    nvm use
  fi
}

chpwd_functions=("${chpwd_functions[@]}" __use_project_node)
