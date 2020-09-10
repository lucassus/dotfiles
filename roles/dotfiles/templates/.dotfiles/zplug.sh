export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

# Load the oh-my-zsh's library.
zplug "ohmyzsh/ohmyzsh"

# Bundles from the default repo (robbyrussell's oh-my-zsh).
zplug "plugins/asdf", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/cp", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/fasd", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
zplug "plugins/last-working-dir", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh

# Third party plugins
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zdharma/fast-syntax-highlighting"

# Load the theme.
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Tune spaceship configuration.
SPACESHIP_TIME_SHOW=true
SPACESHIP_EXIT_CODE_SHOW=true

SPACESHIP_VENV_SYMBOL="🐍 "
SPACESHIP_GIT_STATUS_SHOW=false # Hide git status
SPACESHIP_PACKAGE_SHOW=false # Hide npm package version
SPACESHIP_DOCKER_SHOW=false # Hide docker

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load
