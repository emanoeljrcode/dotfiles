#!/bin/sh

read -p "Are you sure you want to uninstall EJDots? [y/N] " confirmation
if [ $confirmation != y ] && [ $confirmation != Y ]; then
  echo "Uninstall cancelled"
  exit
fi

#
#--- ZSH Uninstall Process
#
rm $HOME/.zshrc
if [ -f "$HOME/.zshrc.backup" ]; then
	mv $HOME/.zshrc.backup $HOME/.zshrc
fi

#
#--- Neovim Uninstall Process
#
rm $HOME/.config/nvim
if [ -d "$HOME/.config/nvim.backup" ]; then
	mv $HOME/.config/nvim.backup $HOME/.config/nvim
fi
#
rm $HOME/.local/share/nvim
if [ -d "$HOME/.local/share/nvim.backup" ]; then
	mv $HOME/.local/share/nvim.backup $HOME/.local/share/nvim
fi

#
#--- TMUX Uninstall Process
#
rm $HOME/.tmux.conf
if [ -f "$HOME/.tmux.conf.backup" ]; then
	mv $HOME/.tmux.conf.backup $HOME/.tmux.conf
fi

#
rm $HOME/.ejdots -rf && cd $HOME
#
echo "EJDots has been successfully uninstalled"
