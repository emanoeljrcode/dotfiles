#!/bin/sh

if [ -f "$HOME/.zshrc.backup" ]; then
	rm $HOME/.zshrc
	mv $HOME/.zshrc.backup $HOME/.zshrc
fi

if [ -f "$HOME/.vimrc.backup" ]; then
	rm $HOME/.vimrc
	mv $HOME/.vimrc.backup $HOME/.vimrc
fi

if [ -d "$HOME/.vim.backup" ]; then
	rm $HOME/.vim
	mv $HOME/.vim.backup $HOME/.vim
fi

if [ -f "$HOME/.tmux.conf.backup" ]; then
	rm $HOME/.tmux.conf
	mv $HOME/.tmux.conf.backup $HOME/.tmux.conf
fi

rm $HOME/.ejdots -rf && cd $HOME

echo "EJDots has been successfully uninstalled"
