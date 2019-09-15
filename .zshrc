export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export LANG=en_GB.UTF-8

# Add custom bin directory
export PATH=/Users/lucassus/bin:$PATH

for file in $HOME/.dotfiles/**/*.sh; do
  source $file
done
