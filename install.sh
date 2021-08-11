#!/bin/sh

#if [ ! -d "$HOME/.ejdots" ]; then
#	echo "Installing EJDots for the first time" 
	if [ ! -d "$HOME/.zshrc" ]; then
		mv $HOME/.zshrc $HOME/.zshrc.backup
		ln -s $HOME/.ejdots/.zshrc $HOME
	fi

	if [ ! -d "$HOME/.tmux.conf" ]; then
		mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
		ln -s $HOME/.ejdots/.tmux.conf $HOME
	fi
#else
#	echo "EJDots is already installed"
#fi
