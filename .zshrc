export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export LANG=en_GB.UTF-8

# Add a custom bin directory
export PATH=$HOME/bin:$PATH

# Load modules
source ~/.dotfiles/zplug.sh
source ~/.dotfiles/aliases.sh
source ~/.dotfiles/direnv.sh
source ~/.dotfiles/fasd.sh
source ~/.dotfiles/fzf.sh
source ~/.dotfiles/iterm2.sh
source ~/.dotfiles/zplug.sh

## Load development modules
source ~/.dotfiles/node.sh
source ~/.dotfiles/python.sh
source ~/.dotfiles/ruby.sh
source ~/.dotfiles/java.sh

# Customize zsh configuration
zstyle ':completion:*' menu select
setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt inc_append_history
setopt share_history
