# Workstation

* `brew.sh` & `brew-cask.sh` - homebrew initialization
* `.osx` - run on a fresh osx setup

## Prerequisites

1. Install Xcode
2. Install homebrew `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
3. Install ansible `brew install ansible`

## Installation

`antibody bundle < roles/dotfiles/templates/.dotfiles/zsh_plugins.txt > roles/dotfiles/templates/.dotfiles/zsh_plugins.sh`

* `ansible-playbook playbook.yaml` 
* `ansible-playbook playbook.yaml --tags packages`
