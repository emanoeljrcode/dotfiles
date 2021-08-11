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
	ln -s $HOME/.ejdots/.zshrc $HOME

#
#--- Neovim Settings
#
	if [ -f "$HOME/.config/nvim/init.vim" ]; then
		mv $HOME/.config/nvim/init.vim $HOME/.config/nvim/init.vim.backup
	fi
	ln -s $HOME/.ejdots/nvim/init.vim $HOME/.config/nvim/
#
	if [ -d "$HOME/.local/share/nvim" ]; then
		mv $HOME/.local/share/nvim $HOME/.local/share/nvim.backup
	fi
	ln -s $HOME/.ejdots/nvim/nvim $HOME/.local/share/

#
#--- TMUX Settings
#
	if [ -f "$HOME/.tmux.conf" ]; then
		mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
	fi
	ln -s $HOME/.ejdots/.tmux.conf $HOME
#
	echo "EJDots has been successfully installed!"
else
	echo "EJDots is already installed."
fi
