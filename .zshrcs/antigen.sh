source "$HOME/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme denysdovhan/spaceship-prompt

# Tune spaceship configuration.
SPACESHIP_TIME_SHOW=true
SPACESHIP_VENV_SYMBOL="🐍 "
SPACESHIP_GIT_STATUS_SHOW=false # Hide git status
SPACESHIP_PACKAGE_SHOW=false # Hide npm package version
SPACESHIP_DOCKER_SHOW=false # Hide docker
SPACESHIP_EXIT_CODE_SHOW=true

# Tell Antigen that you're done.
antigen apply
