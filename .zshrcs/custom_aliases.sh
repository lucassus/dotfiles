alias ll="ls -la"

function dotfiles_reload() {
  echo "Reloading dotfiles..."
  cd "$1" && ./install.sh && zsh
}
