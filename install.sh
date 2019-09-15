curl -L git.io/antigen > "$HOME/antigen.zsh"

for dir in .dotfiles bin; do
  if [ -d "$HOME/$dir" ]; then rm -rf "$HOME/$dir"; fi
  cp -r $dir "$HOME/$dir"
done

cp .gitconfig "$HOME"
cp .zshrc "$HOME"
