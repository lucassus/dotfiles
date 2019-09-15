# Install antigen
if [[ ! -s "$HOME/antigen.zsh" ]]; then
  curl -L git.io/antigen > "$HOME/antigen.zsh"
fi

# Install required brew packages
brew_packages=(fasd fzf direnv)

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
