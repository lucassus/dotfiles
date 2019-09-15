# Ignore python bytecode
export PYTHONDONTWRITEBYTECODE=1

# Auto activate virtualenv
# See https://stackoverflow.com/questions/45216663/how-to-automatically-activate-virtualenvs-when-cding-into-a-directory
function cd() {
  builtin cd "$@"

  # Default path to virtualenv in my projects
  DEFAULT_ENV_PATH="env"

  function _activate() {
    if [[ -f "${DEFAULT_ENV_PATH}/bin/activate" ]] ; then
      source "${DEFAULT_ENV_PATH}/bin/activate"
      echo "Activating virtualenv ${VIRTUAL_ENV}"
    fi
  }

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    _activate
  else
    # check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate then run a new env folder check
    parentdir="$(dirname ${VIRTUAL_ENV})"

    if [[ "$PWD"/ != "$parentdir"/* ]] ; then
      echo "Deactivating virtualenv ${VIRTUAL_ENV}"

      deactivate
      _activate
    fi
  fi
}
