#!/usr/bin/env zsh

set -e;

cd "$(dirname "${${(%):-%x}:h}")";

function doIt() {

	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "brew.sh" \
		--exclude "omz.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	mkdir -p ~/.vim/pack/colors/opt;
	if [ ! -d ~/.vim/pack/colors/opt/everforest ]; then
		git clone --depth 1 https://github.com/sainnhe/everforest.git ~/.vim/pack/colors/opt/everforest;
	fi
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
