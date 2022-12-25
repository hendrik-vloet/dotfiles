#!/bin/bash

function install_tmux_dotfiles(){
	cwd=$(pwd)
	cp $cwd/tmux/tmux.conf $HOME/
	mv $HOME/tmux.conf $HOME/.tmux.conf
	mkdir -p $HOME/.tmux
	cp $cwd/tmux/bash-extensions/left_status.sh $HOME/.tmux
	chmod +x $HOME/.tmux/left_status.sh
}

function install_omz(){
	sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}


install_tmux_dotfiles
install_omz
