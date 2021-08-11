#!/bin/sh

if [ ! -d "$HOME/.zshrc.backup" ]; then
	rm $HOME/.zshrc
	mv $HOME/.zshrc.backup $HOME/.zshrc
fi

if [ ! -d "$HOME/.tmux.conf.backup" ]; then
	rm $HOME/.tmux.conf
	mv $HOME/.tmux.conf.backup $HOME/.tmux.conf
fi

rm $HOME/.ejdots -rf

