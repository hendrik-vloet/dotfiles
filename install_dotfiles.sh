#!/bin/bash

function install_tmux_dotfiles(){
	cwd=$(pwd)
	echo $cwd
	cp $cwd/tmux/tmux.conf $HOME/
	mv $HOME/tmux.conf $HOME/.tmux.conf
	mkdir -p $HOME/.tmux
	cp $cwd/tmux/bash-extensions/left_status.sh $HOME/.tmux
	chmod +x $HOME/.tmux/left_status.sh
}

install_tmux_dotfiles
