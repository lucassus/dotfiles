# Export python 3.8 binaries
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# Ignore python bytecode
export PYTHONDONTWRITEBYTECODE=1

# Serve current directory over HTTP
alias serve="python3 -m http.server 8000"

# Auto activate virtualenv
# See https://stackoverflow.com/questions/45216663/how-to-automatically-activate-virtualenvs-when-cding-into-a-directory
function __use_project_virtualenv() {
  # Default path to virtualenv in my projects
  DEFAULT_ENV_PATH="env"

  function __try_activate() {
    if [[ -f "${DEFAULT_ENV_PATH}/bin/activate" ]] ; then
      source "${DEFAULT_ENV_PATH}/bin/activate"
      echo "Activating virtualenv ${VIRTUAL_ENV}"
    fi
  }

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    __try_activate
  else
    # Check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate then run a new env folder check
    parentdir="$(dirname ${VIRTUAL_ENV})"

    if [[ "$PWD"/ != "$parentdir"/* ]] ; then
      echo "Deactivating virtualenv ${VIRTUAL_ENV}"

      deactivate
      __try_activate
    fi
  fi
}

chpwd_functions=("${chpwd_functions[@]}" __use_project_virtualenv)
