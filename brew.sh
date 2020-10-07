#!/bin/bash

# Install command-line tools using Homebrew

# (Optionally) Turn off brew's analytics https://docs.brew.sh/Analytics
# brew analytics off

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

brew install zplug
brew install cask
brew install zsh
brew install fasd
brew install fzf
brew install direnv
brew install cheat
brew install wget
brew install imagemagick
brew install speedtest-cli
brew install archey
brew install htop
brew install tree

# Development
brew install vim
brew install redis
brew install sqlite
brew install postgresql@9.6
brew install python3
brew install dart

## Stuff required for Android SDK
brew install ant
brew install maven