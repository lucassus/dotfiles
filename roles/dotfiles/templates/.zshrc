export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export LANG=en_GB.UTF-8

# Add a custom bin directory
export PATH=$HOME/bin:$PATH

# Source everything from .dotfiles folder
for file in {{ dotfiles_directory }}/**/*.sh; do
  source $file
done

# Customize zsh configuration
zstyle ':completion:*' menu select
setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt inc_append_history
setopt share_history
