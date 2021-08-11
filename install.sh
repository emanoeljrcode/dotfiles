#!/bin/sh

if [ ! -d "$HOME/.ejdots" ]; then
	echo "Installing EJDots for the first time..." 

	git clone https://github.com/emanoeljrcode/dotfiles.git "$HOME/.ejdots"

	if [ -f "$HOME/.zshrc" ]; then
		mv $HOME/.zshrc $HOME/.zshrc.backup
	fi
	ln -s $HOME/.ejdots/.zshrc $HOME

	if [ -f "$HOME/.vimrc" ]; then
		mv $HOME/.vimrc $HOME/.vimrc.backup
	fi
	ln -s $HOME/.ejdots/.vimrc $HOME

	if [ -d "$HOME/.vim" ]; then
		mv $HOME/.vim $HOME/.vim.backup
	fi
	ln -s $HOME/.ejdots/.vim $HOME

	if [ -f "$HOME/.tmux.conf" ]; then
		mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
	fi
	ln -s $HOME/.ejdots/.tmux.conf $HOME

	echo "EJDots has been successfully installed!"
else
	echo "EJDots is already installed."
fi
