#!/bin/bash
rm -f $HOME/.bash_profile
rm -f $HOME/.bashrc
rm -f $HOME/.gitconfig
rm -f $HOME/.irbrc
rm -f $HOME/.profile
rm -f $HOME/.pryrc
rm -f $HOME/.tmux.conf
rm -f $HOME/.vimrc
rm -f $HOME/.gvimrc
ln -s $HOME/dotfiles/_bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/_bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/_gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/_irbrc $HOME/.irbrc
ln -s $HOME/dotfiles/_profile $HOME/.profile
ln -s $HOME/dotfiles/_pryrc $HOME/.pryrc
ln -s $HOME/dotfiles/_tmux.conf $HOME/.tmux.conf
ln -s $HOME/vimfiles/_vimrc $HOME/.vimrc
ln -s $HOME/vimfiles/_gvimrc $HOME/.gvimrc
