ANTIBODY_HOME="$(antibody home)"

source <(antibody init)

# Load the oh-my-zsh's library.
antibody bundle ohmyzsh/ohmyzsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antibody bundle "
ohmyzsh/ohmyzsh path:plugins/asdf
ohmyzsh/ohmyzsh path:plugins/bundler
ohmyzsh/ohmyzsh path:plugins/colored-man-pages
ohmyzsh/ohmyzsh path:plugins/cp
ohmyzsh/ohmyzsh path:plugins/extract
ohmyzsh/ohmyzsh path:plugins/fasd
ohmyzsh/ohmyzsh path:plugins/fzf
ohmyzsh/ohmyzsh path:plugins/git
ohmyzsh/ohmyzsh path:plugins/history
ohmyzsh/ohmyzsh path:plugins/last-working-dir
ohmyzsh/ohmyzsh path:plugins/sudo
"

# Third party plugins
#zsh-users/zsh-syntax-highlighting
antibody bundle "
zdharma/fast-syntax-highlighting
zsh-users/zsh-autosuggestions
zsh-users/zsh-completions
"

# Load the theme.
antibody bundle denysdovhan/spaceship-prompt

# Tune spaceship configuration.
SPACESHIP_TIME_SHOW=true
SPACESHIP_EXIT_CODE_SHOW=true

SPACESHIP_VENV_SYMBOL="🐍 "
SPACESHIP_GIT_STATUS_SHOW=false # Hide git status
SPACESHIP_PACKAGE_SHOW=false # Hide npm package version
SPACESHIP_DOCKER_SHOW=false # Hide docker
