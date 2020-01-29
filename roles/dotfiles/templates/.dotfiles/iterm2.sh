test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Sets item2 tab color (rgb)
iterm_set_tab_color() {
  if [ $# -eq 0 ]; then
    # Reset tab color if called with no arguments
    echo -ne "\033]6;1;bg;*;default\a"
    return 0
  fi

  echo -ne "\033]6;1;bg;red;brightness;${1}\a"
  echo -ne "\033]6;1;bg;green;brightness;${2}\a"
  echo -ne "\033]6;1;bg;blue;brightness;${3}\a"

  return 0
}

CONFIG_FILE=.iterm_tab_color

__find_nearest() {
  path=$(pwd)

  while [[ "$path" != "" && ! -e "$path/$1" ]]; do
    path=${path%/*}
  done

  echo "$path/$1"
}

function __change_iterm_tab_color() {
  config_file=$(__find_nearest "${CONFIG_FILE}")

  if [[ -s "${config_file}" ]] ; then
    iterm_set_tab_color $(cat "${config_file}")
  else
    iterm_set_tab_color
  fi
}

chpwd_functions=("${chpwd_functions[@]}" __change_iterm_tab_color)
