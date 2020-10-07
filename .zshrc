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

# Customize the history
setopt extended_history
setopt hist_expire_dups_first # Expire duplicates first
setopt hist_find_no_dups # Ignore duplicates when searching
setopt hist_reduce_blanks # Removes blank lines from history
setopt hist_ignore_dups # Do not store duplications
setopt hist_save_nodups
setopt inc_append_history # Adds commands as they are typed, not at shell exit
setopt share_history # Share history across terminals
