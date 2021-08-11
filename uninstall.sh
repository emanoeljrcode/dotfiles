#!/bin/sh

#
#--- ZSH Settings
#
if [ -f "$HOME/.zshrc.backup" ]; then
	rm $HOME/.zshrc
	mv $HOME/.zshrc.backup $HOME/.zshrc
fi

#
#--- Neovim Settings
#
if [ -f "$HOME/.config/nvim.backup" ]; then
	rm $HOME/.config/nvim
	mv $HOME/.config/nvim.backup $HOME/.config/nvim
fi
#
if [ -d "$HOME/.local/share/nvim.backup" ]; then
	rm $HOME/.local/share/nvim
	mv $HOME/.local/share/nvim.backup $HOME/.local/share/nvim
fi

#
#--- TMUX Settings
#
if [ -f "$HOME/.tmux.conf.backup" ]; then
	rm $HOME/.tmux.conf
	mv $HOME/.tmux.conf.backup $HOME/.tmux.conf
fi

#
rm $HOME/.ejdots -rf && cd $HOME
#
echo "EJDots has been successfully uninstalled"
