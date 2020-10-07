#!/bin/bash

rsync \
  --exclude ".git/" \
  --exclude ".gitignore" \
  --exclude ".idea/" \
  --exclude ".osx" \
  --exclude "bootstrap.sh" \
  --exclude "README.md" \
  --exclude "README.local.md" \
  -avh --no-perms . ~
