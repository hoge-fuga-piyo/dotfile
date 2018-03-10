#!/bin/bash

# zsh
if [ -f ~/.zshrc ]; then
	echo "Remove old .zshrc"
	rm ~/.zshrc
elif [ -L ~/.zshrc ]; then
	echo "Unlink old .zshrc"
	unlink ~/.zshrc
fi

echo "Make symbolic link for .zshrc"
ln -s `pwd`/.zshrc ~/

# tmux
if [ -f ~/.tmux.conf ]; then
	echo "Remove old .tmux.conf"
	rm ~/.tmux.conf
elif [ -L ~/.tmux.conf ]; then
	echo "Unlink old .tmux.conf"
	unlink ~/.tmux.conf
fi

echo "Make symbolic link for .tmux.conf"
ln -s `pwd`/.tmux.conf ~/

