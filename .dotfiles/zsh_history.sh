# Make the history size unlimited
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

# HSTR configuration
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

# Customize the history
setopt extended_history       # Record timestamp of command in HISTFILE
setopt hist_expire_dups_first # Expire duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_find_no_dups      # Ignore duplicates when searching
setopt hist_reduce_blanks     # Removes blank lines from history
setopt hist_ignore_all_dups   # Do not store duplications
setopt hist_ignore_space      # Ignore commands that start with space
setopt hist_save_nodups
setopt hist_verify            # Show command with history expansion to user before running it
setopt inc_append_history     # Adds commands as they are typed, not at shell exit
setopt share_history          # Share history across terminals

# Prints a list of the most frequent commands,
# see https://wikimatze.de/show-the-most-common-used-terminal-commands/
function zsh-stats() {
  fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n25
}
