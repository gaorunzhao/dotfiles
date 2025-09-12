#!/bin/bash

# From: https://github.com/nicksp/dotfiles/blob/main/setup/brew.sh
set -euo pipefail

bold=$(tput bold)
reset=$(tput sgr0)

title() {
  echo "${bold} ==> $1${reset}"
  echo
}


indent() {
  sed 's/^/  /'
}

# Check for Homebrew and install it if required
if ! command -v brew &> /dev/null; then
  title "Installing Homebrew…"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re working with the latest version of Homebrew and its formulae
brew update

# Upgrade outdated already-installed formulae
brew upgrade

# Install fonts, tools, apps & vscode extensions
title "Installing software…"
brew bundle --file=.Brewfile | indent

# Remove outdated versions of formulae and casks from the cellar
# Besides, this will run `brew autoremove` to remove all the hanging, no longer needed packages
brew cleanup --prune=all
