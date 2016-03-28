#!/bin/bash
dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=".profile .vimrc .vim .aliases .gitconfig"       # list of files/folders to symlink in homedir
nvim=true

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

if [ "nvim" = true ]; then
	echo "Creating symlink for neo vim"
	
	ln -s ~/dotfiles/.vim ~/.nvim
	ln -s ~/dotfiles/.vimrc ~/.nvimrc
	
	source ~/.nvim
	source ~/.nvimrc
fi

source ~/.profile
source ~/.vimrc
source ~/.vim
source ~/.gitconfig
source ~/.aliases
