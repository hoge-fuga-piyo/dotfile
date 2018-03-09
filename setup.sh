#!/bin/bash

if [ -f ~/.tmux.conf ]; then
	echo "Remove old .tmux.conf"
	rm ~/.tmux.conf
elif [ -L ~/.tmux.conf ]; then
	echo "Unlink old .tmux.conf"
	unlink ~/.tmux.conf
fi

echo "Link .tmux.conf"
ln -s `pwd`/.tmux.conf ~/
