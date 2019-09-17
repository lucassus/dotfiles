# Install antigen
if [[ ! -s "$HOME/antigen.zsh" ]]; then
  curl -L git.io/antigen > "$HOME/antigen.zsh"
fi

# Install iterm2 shell integration
if [[ ! -s "$HOME/.iterm2_shell_integration.zsh" ]]; then
  curl -L https://iterm2.com/shell_integration/zsh -o "$HOME/.iterm2_shell_integration.zsh"
fi

# Install required brew packages
brew_packages=(fasd fzf direnv cheat)

for package in "${brew_packages[@]}"; do
  if ! type "$package" &> /dev/null; then
    brew install "$package"
  fi
done

# Copy files to the home folder
files=(.zshrcs bin .gitconfig .zshrc)

for file in "${files[@]}"; do
  rm -rf "$HOME/$file"
  cp -r "$file" "$HOME/$file"
done
