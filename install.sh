# Install iterm2 shell integration
if [[ ! -s "$HOME/.iterm2_shell_integration.zsh" ]]; then
  curl -L https://iterm2.com/shell_integration/zsh -o "$HOME/.iterm2_shell_integration.zsh"
fi

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
