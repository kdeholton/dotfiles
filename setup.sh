#!/bin/bash

# all the keyboard mappings
cp .xbindkeys ~/
cp .caps_super.xmodmap ~/

# all the git config files
mkdir -p ~/.git
cp -r .git/* ~/.git/

# all the vim config files
mkdir -p ~/.vim
cp .vimrc ~/
cp -r .vim/* ~/.vim

# all the i3 files
mkdir -p ~/.i3
cp -r .i3/* ~/.i3/
