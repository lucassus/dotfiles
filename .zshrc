start=$(ruby -e 'puts Time.now.to_f')

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
source ~/.dotfiles/zsh_history.sh

# Load development modules
source ~/.dotfiles/node.sh
source ~/.dotfiles/python.sh
source ~/.dotfiles/ruby.sh
source ~/.dotfiles/java.sh

# Customize zsh configuration
zstyle ':completion:*' menu select

end=$(ruby -e 'puts Time.now.to_f')
runtime=$((end-start))

echo "Bootstrap time ${runtime} seconds"
