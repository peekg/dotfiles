#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ls -l ~/.zprofile || ln -s $SCRIPT_DIR/.zprofile ~/.zprofile
ls -l ~/.vimrc || ln -s $SCRIPT_DIR/.config/init.vim ~/.vimrc
ls -l ~/.config/nvim || (mkdir ~/.config && mkdir ~/.config/nvim)
ls -l ~/.config/nvim/init.vim || ln -s $SCRIPT_DIR/.config/nvim/init.vim ~/.config/nvim/init.vim
ls -l ~/.config/nvim/plugin || ln -s $SCRIPT_DIR/.config/nvim/plugin ~/.config/nvim/plugin
ls -l ~/.zshrc || ln -s $SCRIPT_DIR/.zshrc ~/.zshrc
ls -l ~/.gitconfig || ln -s $SCRIPT_DIR/.gitconfig ~/.gitconfig

source brew.sh
source neovim.sh
source iterm2.sh
