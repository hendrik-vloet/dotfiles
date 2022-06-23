#!/bin/bash

function install_tmux_dotfiles(){
	cp tmux/tmux.conf $HOME/
	mkdir -p $HOME/.tmux
	cp tmux/left_status.sh $HOME/.tmux
	chmod +x $HOME/.tmux/left_status.sh
}
