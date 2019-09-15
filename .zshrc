export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export LANG=en_GB.UTF-8

# Add custom bin directory
export PATH=$HOME/bin:$PATH

for file in $HOME/.zshrcs/**/*.sh; do
  source $file
done
