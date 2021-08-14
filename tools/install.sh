#!/bin/sh

if [ ! -d "$HOME/.ejdots" ]; then
	echo "Installing EJDots for the first time..." 
#
	git clone https://github.com/emanoeljrcode/dotfiles.git "$HOME/.ejdots"
#

#--- ZSH Settings
#
	if [ -f "$HOME/.zshrc" ]; then
		mv $HOME/.zshrc $HOME/.zshrc.backup
	fi
	ln -s $HOME/.ejdots/zsh/.zshrc $HOME

#
#--- Neovim Settings
#
	if [ -d "$HOME/.config/nvim" ]; then
		mv $HOME/.config/nvim $HOME/.config/nvim.backup
	fi
	ln -s $HOME/.ejdots/nvim/nvim.config $HOME/.config/nvim
#
	if [ -d "$HOME/.local/share/nvim" ]; then
		mv $HOME/.local/share/nvim $HOME/.local/share/nvim.backup
	fi
	ln -s $HOME/.ejdots/nvim/nvim.local $HOME/.local/share/nvim

#
#--- TMUX Settings
#
	if [ -f "$HOME/.tmux.conf" ]; then
		mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
	fi
	ln -s $HOME/.ejdots/tmux/.tmux.conf $HOME
#
	echo "EJDots has been successfully installed!"
else
	echo "EJDots is already installed."
fi
