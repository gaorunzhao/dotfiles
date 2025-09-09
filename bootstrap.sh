#!/usr/bin/env zsh

set -e;

cd "$(dirname "${${(%):-%x}:h}")";

git pull origin main;

function doIt() {

	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "brew.sh" \
		--exclude "omz.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.zshrc;
}

if [[ "$1" == "--force" || "$1" == "-f" ]]; then
	doIt;
else
	read -q "?This may overwrite existing files in your home directory. Are you sure? (y/n) "
	echo ""
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi
fi;
unset doIt;
