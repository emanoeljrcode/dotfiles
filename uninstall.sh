#!/bin/sh

#
#--- ZSH Settings
#
rm $HOME/.zshrc
if [ -f "$HOME/.zshrc.backup" ]; then
	mv $HOME/.zshrc.backup $HOME/.zshrc
fi

#
#--- Neovim Settings
#
rm $HOME/.config/nvim
if [ -f "$HOME/.config/nvim.backup" ]; then
	mv $HOME/.config/nvim.backup $HOME/.config/nvim
fi
#
rm $HOME/.local/share/nvim
if [ -d "$HOME/.local/share/nvim.backup" ]; then
	mv $HOME/.local/share/nvim.backup $HOME/.local/share/nvim
fi

#
#--- TMUX Settings
#
rm $HOME/.tmux.conf
if [ -f "$HOME/.tmux.conf.backup" ]; then
	mv $HOME/.tmux.conf.backup $HOME/.tmux.conf
fi

#
rm $HOME/.ejdots -rf && cd $HOME
#
echo "EJDots has been successfully uninstalled"